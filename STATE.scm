;;; STATE.scm - Project Checkpoint
;;; llm-verify
;;; Format: Guile Scheme S-expressions
;;; Purpose: Preserve AI conversation context across sessions
;;; Reference: https://github.com/hyperpolymath/state.scm

;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

;;;============================================================================
;;; METADATA
;;;============================================================================

(define metadata
  '((version . "0.1.0")
    (schema-version . "1.0")
    (created . "2025-12-15")
    (updated . "2025-12-17")
    (project . "llm-verify")
    (repo . "github.com/hyperpolymath/llm-verify")))

;;;============================================================================
;;; PROJECT CONTEXT
;;;============================================================================

(define project-context
  '((name . "llm-verify")
    (tagline . "Real verification for LLM-generated code via ECHIDNA integration.")
    (version . "0.1.0")
    (license . "AGPL-3.0-or-later")
    (rsr-compliance . "gold-target")

    (tech-stack
     ((primary . "See repository languages")
      (ci-cd . "GitHub Actions + GitLab CI + Bitbucket Pipelines")
      (security . "CodeQL + OSSF Scorecard")))))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================

(define current-position
  '((phase . "v0.1 - Initial Setup and RSR Compliance")
    (overall-completion . 30)

    (components
     ((rsr-compliance
       ((status . "complete")
        (completion . 100)
        (notes . "SHA-pinned actions, SPDX headers, multi-platform CI, flake.nix, Containerfile")))

      (package-management
       ((status . "complete")
        (completion . 100)
        (notes . "guix.scm (primary) + flake.nix (fallback) - dual license MIT OR AGPL-3.0-or-later")))

      (containerization
       ((status . "complete")
        (completion . 100)
        (notes . "Containerfile added with multi-stage build and security best practices")))

      (documentation
       ((status . "foundation")
        (completion . 35)
        (notes . "README, ARCHITECTURE.md, META/ECOSYSTEM/STATE.scm, RSR_COMPLIANCE.adoc")))

      (testing
       ((status . "minimal")
        (completion . 10)
        (notes . "CI/CD scaffolding exists, limited test coverage")))

      (core-functionality
       ((status . "in-progress")
        (completion . 25)
        (notes . "Initial implementation underway - Haskell project structure ready")))))

    (working-features
     ("RSR-compliant CI/CD pipeline"
      "Multi-platform mirroring (GitHub, GitLab, Bitbucket)"
      "SPDX license headers on all files"
      "SHA-pinned GitHub Actions"
      "Guix package definition (guix.scm)"
      "Nix flake (flake.nix)"
      "OCI container support (Containerfile)"))))

;;;============================================================================
;;; ROUTE TO MVP
;;;============================================================================

(define route-to-mvp
  '((target-version . "1.0.0")
    (definition . "Stable release with comprehensive documentation and tests")

    (milestones
     ((v0.1
       ((name . "Initial Setup and RSR Compliance")
        (status . "in-progress")
        (items
         ("Architecture document" . done)
         ("Haskell project structure" . done)
         ("guix.scm package definition" . done)
         ("flake.nix package definition" . done)
         ("Containerfile" . done)
         ("RSR compliance audit" . done)
         ("Security review" . done))))

      (v0.2
       ((name . "Core Functionality")
        (status . "pending")
        (items
         ("ECHIDNA client module - gRPC/JSON-RPC integration"
          "Basic VC extraction from Rust/Haskell/Ada"
          "Feedback capture to SQLite"
          "CLI interface (verify, init, check-echidna)"
          "SARIF/JSON report generation"
          "Unit tests for core modules"))))

      (v0.3
       ((name . "Language Support")
        (status . "pending")
        (items
         ("Rust parser and VC generator (Megaparsec)"
          "Haskell parser and VC generator"
          "Ada/SPARK parser"
          "SMT-LIB output format support"))))

      (v0.5
       ((name . "Integration Phase")
        (status . "pending")
        (items
         ("Pre-commit git hook"
          "GitHub Action (hyperpolymath/claude-verify-action)"
          "Browser extension for Claude.ai"
          "Claude Code plugin (/verify command)"
          "Test coverage > 70%"
          "API stability"))))

      (v0.8
       ((name . "Advanced Features")
        (status . "pending")
        (items
         ("Echomesh context integration"
          "Multi-prover portfolio strategy"
          "Neurosymbolic confidence calibration"
          "Proof certificate generation"))))

      (v1.0
       ((name . "Production Release")
        (status . "pending")
        (items
         ("Comprehensive test coverage > 80%"
          "Performance optimization"
          "Security audit (external)"
          "User documentation complete"
          "Anthropic feedback API integration (optional)"
          "Community issue database"))))))))

;;;============================================================================
;;; BLOCKERS & ISSUES
;;;============================================================================

(define blockers-and-issues
  '((critical
     ())  ;; No critical blockers

    (high-priority
     ())  ;; No high-priority blockers

    (medium-priority
     ((test-coverage
       ((description . "Limited test infrastructure")
        (impact . "Risk of regressions")
        (needed . "Comprehensive test suites")))))

    (low-priority
     ((documentation-gaps
       ((description . "Some documentation areas incomplete")
        (impact . "Harder for new contributors")
        (needed . "Expand documentation")))))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================

(define critical-next-actions
  '((immediate
     (("Implement ECHIDNA client module" . high)
      ("Create basic VC extraction" . high)
      ("Add unit tests for existing modules" . medium)))

    (this-week
     (("Complete Rust language parser" . high)
      ("Implement feedback capture system" . high)
      ("Add CLI verify command" . medium)))

    (this-month
     (("Reach v0.2 milestone" . high)
      ("Complete Haskell/Ada parsers" . medium)
      ("Implement SARIF report generation" . medium)))))

;;;============================================================================
;;; SESSION HISTORY
;;;============================================================================

(define session-history
  '((snapshots
     ((date . "2025-12-17")
      (session . "security-and-compliance-review")
      (accomplishments
       ("Added flake.nix for Nix package management"
        "Added Containerfile for OCI container builds"
        "Fixed license consistency (MIT OR AGPL-3.0-or-later)"
        "Updated guix.scm with proper dual license"
        "Updated RSR_COMPLIANCE.adoc to Compliant status"
        "Security audit: no HTTP URLs, no weak hashes, no hardcoded secrets"
        "Updated roadmap with detailed milestones v0.1-v1.0"))
      (notes . "Comprehensive SCM and security review completed"))
     ((date . "2025-12-15")
      (session . "initial-state-creation")
      (accomplishments
       ("Added META.scm, ECOSYSTEM.scm, STATE.scm"
        "Established RSR compliance"
        "Created initial project checkpoint"))
      (notes . "First STATE.scm checkpoint created via automated script")))))

;;;============================================================================
;;; HELPER FUNCTIONS (for Guile evaluation)
;;;============================================================================

(define (get-completion-percentage component)
  "Get completion percentage for a component"
  (let ((comp (assoc component (cdr (assoc 'components current-position)))))
    (if comp
        (cdr (assoc 'completion (cdr comp)))
        #f)))

(define (get-blockers priority)
  "Get blockers by priority level"
  (cdr (assoc priority blockers-and-issues)))

(define (get-milestone version)
  "Get milestone details by version"
  (assoc version (cdr (assoc 'milestones route-to-mvp))))

;;;============================================================================
;;; EXPORT SUMMARY
;;;============================================================================

(define state-summary
  '((project . "llm-verify")
    (version . "0.1.0")
    (overall-completion . 30)
    (current-milestone . "v0.1 - Initial Setup and RSR Compliance (near complete)")
    (next-milestone . "v0.2 - Core Functionality")
    (critical-blockers . 0)
    (high-priority-issues . 0)
    (rsr-compliance . "Compliant")
    (security-status . "Audited - No issues found")
    (updated . "2025-12-17")))

;;; End of STATE.scm
