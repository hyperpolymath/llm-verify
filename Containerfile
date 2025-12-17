# SPDX-License-Identifier: MIT OR AGPL-3.0-or-later
# SPDX-FileCopyrightText: 2025 hyperpolymath
# Containerfile for llm-verify
# Build: podman build -f Containerfile -t llm-verify .
# Run:   podman run --rm -v $(pwd):/workspace llm-verify verify /workspace/src

# Stage 1: Build environment
FROM docker.io/library/haskell:9.4.8-slim AS builder

# Install build dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libz-dev \
    libsqlite3-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /build

# Copy cabal files first for better caching
COPY claude-verify.cabal cabal.project* ./

# Build dependencies (cached layer)
RUN cabal update && cabal build --only-dependencies

# Copy source code
COPY app/ app/
COPY src/ src/
COPY test/ test/
COPY LICENSE.txt ./

# Build the application
RUN cabal build claude-verify && \
    cp $(cabal list-bin claude-verify) /usr/local/bin/

# Stage 2: Runtime environment
FROM docker.io/library/debian:bookworm-slim AS runtime

# Install runtime dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgmp10 \
    libsqlite3-0 \
    ca-certificates \
    z3 \
    && rm -rf /var/lib/apt/lists/*

# Create non-root user for security
RUN useradd -m -s /bin/bash verifier

# Copy binary from builder
COPY --from=builder /usr/local/bin/claude-verify /usr/local/bin/

# Set ownership
RUN chown verifier:verifier /usr/local/bin/claude-verify

USER verifier
WORKDIR /workspace

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD claude-verify --version || exit 1

ENTRYPOINT ["claude-verify"]
CMD ["--help"]

# Labels for container metadata
LABEL org.opencontainers.image.title="llm-verify"
LABEL org.opencontainers.image.description="Real verification for LLM-generated code via ECHIDNA integration"
LABEL org.opencontainers.image.source="https://github.com/hyperpolymath/llm-verify"
LABEL org.opencontainers.image.licenses="MIT OR AGPL-3.0-or-later"
LABEL org.opencontainers.image.vendor="hyperpolymath"
