# SPDX-License-Identifier: MIT OR AGPL-3.0-or-later
# SPDX-FileCopyrightText: 2025 hyperpolymath
{
  description = "llm-verify - Real verification for LLM-generated code via ECHIDNA integration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        # Haskell package set with overrides
        haskellPackages = pkgs.haskell.packages.ghc948.override {
          overrides = hself: hsuper: {
            claude-verify = hself.callCabal2nix "claude-verify" ./. { };
          };
        };

        # Development tools
        devTools = with pkgs; [
          # Haskell toolchain
          haskellPackages.ghc
          haskellPackages.cabal-install
          haskellPackages.haskell-language-server
          haskellPackages.hlint
          haskellPackages.ormolu

          # SMT solvers (for verification)
          z3
          cvc5

          # Build tools
          just
          git

          # Documentation
          haskellPackages.haddock
        ];

      in
      {
        # Default package
        packages = {
          default = haskellPackages.claude-verify;
          claude-verify = haskellPackages.claude-verify;
        };

        # Development shell
        devShells.default = pkgs.mkShell {
          buildInputs = devTools ++ [
            haskellPackages.claude-verify.env.nativeBuildInputs or [ ]
          ];

          shellHook = ''
            echo "llm-verify development environment"
            echo "Haskell: $(ghc --version)"
            echo "Cabal: $(cabal --version | head -1)"
            echo ""
            echo "Available commands:"
            echo "  just build    - Build the project"
            echo "  just test     - Run tests"
            echo "  just format   - Format code with ormolu"
            echo "  just lint     - Lint with hlint"
          '';
        };

        # CI checks
        checks = {
          build = haskellPackages.claude-verify;
          format = pkgs.runCommand "check-format" { } ''
            cd ${./.}
            ${pkgs.haskellPackages.ormolu}/bin/ormolu --mode check $(find src app test -name '*.hs')
            touch $out
          '';
        };

        # Overlay for use in other flakes
        overlays.default = final: prev: {
          claude-verify = self.packages.${system}.claude-verify;
        };
      }
    );
}
