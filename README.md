# compilescope
Make/CMake workflow for running the kitchen sink of static analyzers and sanitizers.

* Stock Clang/gcc analyizers

Need:

* Working on M1, x86_64 Debian, x86_64 Fedora
* code coverage of test suites
* stubs for KLEE and fuzzers
* Rust/Python/Ruby/C/C++ core data structures: succinct, b-tree, trie, trie-with-counters, combinatorial species, tuned hashtable, suffix array

Test suite:

* llvm-project, gcc, zstd, curl, z3, sqlite, postgresql, coreutils, linux-kernel, ruby, python


Stuff I'm interested in at some point.
* Use of CRIU to get at runtime shenanigans and cold memory sections that can be compressed.
* eBPF stack trie counters
* linters for struct shrink https://lwn.net/Articles/335942/ - and generation of succinct data types with combinatorial species
* linter for branch simplification
* shotgun parser linter
* STL structure use analyizer
* CYK parser target for combinatorial specialization and correctness checking
* Function signature database, operad database
