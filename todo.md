| Version | Run with                                        | Benchmark (≈)  |
| :------ | :---------------------------------------------- | :------------- |
| **C**   | **`CFLAGS=-O3 make gendate && ./gendate`**      | **`156.3 ms`** |
| Rust    | `cargo build -r && ./target/release/gendate`    | `213.0 ms`     |
| Go      | `GOFLAGS=-ldflags="-s -w" && go run gendate.go` | `234.6 ms`     |
| Haskell | `ghc -O2 gendate.hs -o gendate && ./gendate`    | `715.0 ms`     |
| Scheme  | `csc -O5 gendate.scm && ./gendate`              | `1.545 s`      |
| Perl    | `./gendate.pl`                                  | `2.310 s`      |
| Lua     | `./gendate.lua`                                 | `3.377 s`      |
| Shell   | `./gendate.sh`                                  | `10.58 m`      |


hyperfine -w32 -r64 c/gendate rust/target/release/gendate go/gendate hs/gendate scheme/gendate pl/gendate.pl lua/gendate.lua --export-markdown -
