;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — llm-verify

(ecosystem
  (version "1.0.0")
  (name "llm-verify")
  (type "project")
  (purpose "Real verification for LLM-generated code via ECHIDNA integration.")

  (position-in-ecosystem
    "Part of hyperpolymath ecosystem. Follows RSR guidelines.")

  (related-projects
    (project (name "rhodium-standard-repositories")
             (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
             (relationship "standard")))

  (what-this-is "Real verification for LLM-generated code via ECHIDNA integration.")
  (what-this-is-not "- NOT exempt from RSR compliance"))
