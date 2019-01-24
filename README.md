# Feihong's Atdgen Quickstart

## Prerequisites

Install opam and OCaml switch

    brew install opam

    # Initialise the opam state, but don't setup any compiler switch yet
    opam init --bare --shell-hook --enable-completion --enable-shell-hook

    # Create a switch in the current directory that uses version 4.07.1 of the OCaml compiler. Answer yes to all yes/no questions without prompting.
    opam switch create . 4.07.1 --yes

    # Install atd and atdgen from master instead of using official release.
    opam pin add atd --dev-repo
    opam pin add atdgen --dev-repo

Note: Run `opam switch list-available` to get a list of all available compiler versions. The `opam switch create` command tends to take a long time.

Install BuckleScript

    yarn init

    # Install bs-platform
    yarn add bs-platform --dev

    # Add runtime to be used by generated code
    yarn add @ahrefs/bs-atdgen-codec-runtime