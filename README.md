Regular Language Representations in the Constructive Type Theory of Coq
=======================================================================

OPAM friendly version of the Coq development accompanying the paper [Regular Language Representations in the Constructive Type Theory of Coq](http://www.ps.uni-saarland.de/extras/RLR-Coq).

Requirements
------------

- [`Coq 8.5`](https://coq.inria.fr/coq-85), [`Coq 8.6`](https://coq.inria.fr/coq-86), or [`Coq 8.7`](https://coq.inria.fr/coq-87)
- [`mathcomp-ssreflect 1.6.1`](http://math-comp.github.io/math-comp/) (or later)

Building
--------

The easiest way to build and install the library is via
[OPAM](http://opam.ocaml.org/doc/Install.html):

```
opam repo add coq-released https://coq.inria.fr/opam/released
opam repo add proofengineering-dev http://opam-dev.proofengineering.org
opam install reglang
```

To instead build manually, run `./configure` in the root directory,
and then run `make`.

