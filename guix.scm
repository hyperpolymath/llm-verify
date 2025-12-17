;; llm-verify - Guix Package Definition
;; Run: guix shell -D -f guix.scm

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system gnu)
             ((guix licenses) #:prefix license:)
             (gnu packages base)
             (gnu packages haskell)
             (gnu packages haskell-xyz))

(define-public llm_verify
  (package
    (name "llm-verify")
    (version "0.1.0")
    (source (local-file "." "llm-verify-checkout"
                        #:recursive? #t
                        #:select? (git-predicate ".")))
    (build-system gnu-build-system)
    (synopsis "Real verification for LLM-generated code via ECHIDNA integration")
    (description "Claude-verify provides actual formal verification for code
that Claude or other LLMs generate, rather than relying on pattern matching.
It integrates with the ECHIDNA neurosymbolic theorem proving platform to access
12+ theorem provers including Z3, CVC5, Lean, Coq, and Agda.")
    (home-page "https://github.com/hyperpolymath/llm-verify")
    (license (list license:expat license:agpl3+))))

;; Return package for guix shell
llm_verify
