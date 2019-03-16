# Feihong's Atdgen Quickstart

## Prerequisites

Install esy and install all dependencies:

    yarn global add esy
    esy install && esy build
    yarn install

Note: If you have opam installed, run `opam switch list-available` to get a list of all available compiler versions.

## Commands

Generate OCaml source files from type definitions in .atd files

    yarn gen

Build .re and .ml source files

    yarn build

Run program

    yarn main
