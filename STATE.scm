;; -*- mode: scheme; coding: utf-8 -*-
;; SPDX-License-Identifier: MIT
;;
;; STATE.scm - Project State Checkpoint
;; For: llm-verify
;; Generated: 2025-12-08
;;
;; Upload this file at session start to restore full context.
;; Download updated version at session end.

(define-module (state llm-verify)
  #:version "0.1.0")

;;;; ============================================================
;;;; METADATA
;;;; ============================================================

(define metadata
  '((format-version . "1.0.0")
    (created . "2025-12-08")
    (last-updated . "2025-12-08")
    (generator . "Claude/STATE")))

;;;; ============================================================
;;;; PROJECT CONTEXT
;;;; ============================================================

(define project-context
  '((name . "llm-verify")
    (repository . "https://github.com/Hyperpolymath/llm-verify")
    (license . "MIT")
    (primary-language . "Haskell")
    (related-projects . ("ECHIDNA" "Echomesh"))
    (description . "Real verification for LLM-generated code via ECHIDNA integration")))

;;;; ============================================================
;;;; CURRENT POSITION
;;;; ============================================================

(define current-position
  '((phase . "alpha")
    (version . "0.1.0.0")
    (overall-completion . 35)

    (completed-components
      ((core-types . 90)
       (project-structure . 100)
       (cabal-build-system . 100)
       (cli-interface . 85)
       (echidna-client-interface . 70)
       (feedback-database-schema . 80)
       (report-generation . 75)
       (configuration-system . 85)
       (documentation . 70)))

    (in-progress-components
      ((language-parsers . 40)
       (property-extraction . 35)
       (vc-generation . 30)
       (test-suite . 20)))

    (not-started-components
      ((browser-extension . 0)
       (claude-code-integration . 0)
       (github-action . 0)
       (anthropic-feedback-api . 0)
       (cross-session-persistence . 0)))))

;;;; ============================================================
;;;; ROUTE TO MVP v1
;;;; ============================================================

(define mvp-v1-roadmap
  '((target . "Minimal viable verification pipeline")
    (scope . "Single language (Rust) with basic property extraction and ECHIDNA integration")

    (milestone-1
      ((name . "Core Verification Pipeline")
       (status . "in-progress")
       (completion . 40)
       (tasks
         (("Complete Rust parser for basic constructs" . pending)
          ("Implement bounds-check VC extraction" . pending)
          ("Wire up ECHIDNA client with real API calls" . in-progress)
          ("Add Z3/CVC5 result parsing" . pending)
          ("End-to-end test: Rust file -> VC -> ECHIDNA -> result" . pending)))))

    (milestone-2
      ((name . "Feedback Loop MVP")
       (status . "pending")
       (completion . 20)
       (tasks
         (("SQLite feedback storage working" . done)
          ("Record command captures user corrections" . in-progress)
          ("Export command generates injection format" . pending)
          ("List command shows recent feedback" . done)))))

    (milestone-3
      ((name . "CLI Polish")
       (status . "pending")
       (completion . 30)
       (tasks
         (("verify command runs full pipeline" . pending)
          ("check command runs quick local checks" . in-progress)
          ("stats command shows verification history" . pending)
          ("Terminal output formatting" . done)
          ("JSON/SARIF report output" . done)))))

    (milestone-4
      ((name . "Documentation & Testing")
       (status . "pending")
       (completion . 25)
       (tasks
         (("Hspec test suite with real coverage" . pending)
          ("QuickCheck property tests for parsers" . pending)
          ("Integration tests with mock ECHIDNA" . pending)
          ("User-facing documentation complete" . in-progress)))))

    (mvp-definition
      "User can run 'claude-verify verify file.rs' and get actual
       formal verification results from ECHIDNA provers, with any
       failures recorded for future session injection.")))

;;;; ============================================================
;;;; CURRENT ISSUES / BLOCKERS
;;;; ============================================================

(define issues
  '((blocking
      (("ECHIDNA availability"
        . "ECHIDNA platform needs to be running/accessible for real verification")
       ("Parser completeness"
        . "Rust parser only handles basic function signatures, needs full AST support")
       ("VC extraction logic"
        . "Weakest precondition calculation not fully implemented")))

    (technical-debt
      (("Pending tests"
        . "Most Hspec tests are marked 'pending' - need actual implementations")
       ("Error handling"
        . "Many functions use partial patterns or incomplete error cases")
       ("SMT-LIB generation"
        . "SMTLIB.hs has placeholder implementations")))

    (design-decisions-needed
      (("ECHIDNA protocol"
        . "Need to finalize REST/gRPC API contract with ECHIDNA")
       ("Feedback injection format"
        . "What format works best for Claude context injection?")
       ("Multi-file verification"
        . "How to handle cross-module dependencies?")))))

;;;; ============================================================
;;;; QUESTIONS FOR MAINTAINER
;;;; ============================================================

(define questions
  '((architecture
      ("Is ECHIDNA deployed and accessible? What's the API endpoint?"
       "Should we support local-only mode with just Z3?"
       "Priority order for additional language support after Rust?"))

    (scope
      ("MVP target date or is this exploratory?"
       "Browser extension - Chrome only or cross-browser?"
       "Claude Code integration - custom slash command vs MCP server?"))

    (integration
      ("Anthropic feedback API - is this a real/planned API or speculative?"
       "GitHub Action - self-hosted runners or marketplace action?"
       "Pre-commit hook - should it block commits or just warn?"))

    (testing
      ("Access to ECHIDNA test instance for integration testing?"
       "Example codebases with known bugs for test corpus?"
       "CI/CD preferences - GitHub Actions sufficient?"))))

;;;; ============================================================
;;;; LONG-TERM ROADMAP
;;;; ============================================================

(define long-term-roadmap
  '((phase-1-foundation
      ((name . "MVP v1 - Core Pipeline")
       (target . "Q1")
       (goals
         ("Single-language verification (Rust)"
          "ECHIDNA integration working"
          "Feedback capture and export"
          "CLI fully functional"))))

    (phase-2-expansion
      ((name . "Multi-Language & Integrations")
       (target . "Q2")
       (goals
         ("Add Haskell and Ada parsers"
          "Browser extension for claude.ai"
          "Claude Code slash command"
          "GitHub Action for CI/CD"
          "Pre-commit hook polish"))))

    (phase-3-intelligence
      ((name . "Smart Feedback & Learning")
       (target . "Q3")
       (goals
         ("Anthropic feedback API integration"
          "Cross-session feedback persistence"
          "Pattern recognition in failures"
          "Automatic known-issue detection"
          "Confidence scoring with evidence"))))

    (phase-4-ecosystem
      ((name . "Ecosystem & Community")
       (target . "Q4+")
       (goals
         ("IDE integrations (VSCode, IntelliJ)"
          "Additional languages (OCaml, Elixir, Go)"
          "Formal specification library"
          "Community feedback sharing (opt-in)"
          "Verification caching/memoization"))))

    (long-term-vision
      "A verification layer that sits between LLM code generation and
       production deployment, providing actual mathematical proofs of
       correctness where possible, and building institutional knowledge
       from mistakes to prevent recurrence across all users.")))

;;;; ============================================================
;;;; PROJECT CATALOG
;;;; ============================================================

(define project-catalog
  '((llm-verify
      ((status . in-progress)
       (completion . 35)
       (category . formal-verification)
       (phase . alpha)
       (blockers . ("ECHIDNA availability" "Parser completeness"))
       (next-actions
         ("Complete Rust parser basics"
          "Wire ECHIDNA client"
          "Write real tests"))))))

;;;; ============================================================
;;;; CRITICAL NEXT ACTIONS
;;;; ============================================================

(define critical-next-actions
  '(("Complete Rust parser for function signatures with contracts" . high)
    ("Implement bounds-check VC extraction" . high)
    ("Test ECHIDNA client against real/mock endpoint" . high)
    ("Fill in pending Hspec tests" . medium)
    ("Finalize ECHIDNA API contract" . medium)))

;;;; ============================================================
;;;; HISTORY
;;;; ============================================================

(define history
  '((snapshots
      ((date . "2025-12-08")
       (event . "Initial STATE.scm created")
       (completion . 35)
       (notes . "Project has solid foundation, needs verification pipeline completion")))))

;;;; ============================================================
;;;; FILES MODIFIED THIS SESSION
;;;; ============================================================

(define session-files
  '((created . ("STATE.scm"))
    (modified . ())
    (reviewed . ("README.md" "src/**/*.hs" "app/Main.hs" "claude-verify.cabal"))))

;;;; ============================================================
;;;; CODEBASE STRUCTURE SUMMARY
;;;; ============================================================

(define codebase-structure
  '((root . "llm-verify/")
    (source-tree
      ("src/ClaudeVerify.hs"           . "Main entry point, API re-exports")
      ("src/ClaudeVerify/EchidnaClient.hs" . "ECHIDNA integration, prover management")
      ("src/ClaudeVerify/Feedback.hs"  . "SQLite feedback database")
      ("src/ClaudeVerify/PropertyExtraction.hs" . "VC extraction, WP logic")
      ("src/ClaudeVerify/Config.hs"    . "TOML configuration loading")
      ("src/ClaudeVerify/Report.hs"    . "Report generation (4 formats)")
      ("src/ClaudeVerify/Internal/Types.hs" . "Core types")
      ("src/ClaudeVerify/Internal/AST.hs"   . "Generic AST representation")
      ("src/ClaudeVerify/Internal/SMTLIB.hs" . "SMT-LIB formula generation")
      ("src/ClaudeVerify/Languages/Rust.hs"    . "Rust parser")
      ("src/ClaudeVerify/Languages/Haskell.hs" . "Haskell parser")
      ("src/ClaudeVerify/Languages/Ada.hs"     . "Ada/SPARK parser"))
    (app . ("app/Main.hs" . "CLI interface with subcommands"))
    (tests . ("test/Spec.hs" . "Hspec test suite"))
    (config . (".claude-context.toml" . "Project configuration"))
    (docs . ("README.md" "ARCHITECTURE.md" "docs/feedback-loop-spec.md"))))

;;;; ============================================================
;;;; TECHNICAL CONTEXT
;;;; ============================================================

(define technical-context
  '((build-system . "Cabal 3.0+")
    (ghc-versions . ("9.4.8" "9.6.4" "9.8.2"))
    (key-dependencies
      ("megaparsec 9.3+" . "Parser combinators")
      ("sbv 10.0+"       . "SMT solver bindings")
      ("what4 1.4+"      . "SMT interface")
      ("aeson 2.1+"      . "JSON serialization")
      ("sqlite-simple"   . "Feedback database")
      ("toml-parser"     . "Configuration")
      ("optparse-applicative" . "CLI parsing"))
    (provers-supported
      ("SMT" . ("Z3" "CVC5"))
      ("Theorem" . ("Lean4" "Coq" "Agda" "Isabelle" "HOL-Light" "Mizar"))
      ("ATP" . ("Vampire" "E"))
      ("Model-Checkers" . ("TLC" "Alloy")))))

;;;; ============================================================
;;;; SESSION PROTOCOL
;;;; ============================================================

;; At session start:
;;   1. Upload this STATE.scm
;;   2. Claude parses and reconstructs context
;;   3. Resume from critical-next-actions
;;
;; At session end:
;;   1. Update completion percentages
;;   2. Add any new blockers/issues
;;   3. Update critical-next-actions
;;   4. Add to history snapshots
;;   5. Download updated STATE.scm

;; End of STATE.scm
