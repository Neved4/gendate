# `dategen` - Generate dates! ⌚️

List dates from *January 1, 1970* ([UNIX Epoch]) to 3000 AD, including leap years.

Dates are printed using [ISO 8601] format.

## Motivation

The original shell script for generating days took several minutes,
prompting a rewrite in C.  
Additional implementations were incorporated to explore the problem across
other languages.

## Getting Started

### Building

`cd` to `src/variant`, then compile with the command from table below:

<div align="center">

| Version | Run with                                     | Benchmark (≈)  |
| :------ | :------------------------------------------- | :------------- |
| **C**   | **`make gendate && ./gendate`**              | **`156.3 ms`** |
| Rust    | `cargo build -r && ./target/release/gendate` | `213.0 ms`     |
| Go      | `go build gendate.go && ./gendate`           | `234.6 ms`     |
| Haskell | `ghc gendate.hs -o gendate && ./gendate`     | `715.0 ms`     |
| Scheme  | `csc gendate.scm && ./gendate`               | `1.545 s`      |
| Perl    | `./gendate.pl`                               | `2.310 s`      |
| Lua     | `./gendate.lua`                              | `3.377 s`      |
| Shell   | `./gendate.sh`                               | `10.58 m`      |

###### All programs were measured with [`hyperfine`].

</div>

### Output

Each implementation produces output equivalent to:
```console
$ ./gendate
1970-01-01
1970-01-02
1970-01-03
...
2999-12-30
2999-12-31
3000-01-01
```

## License

This repository is licensed under the terms of the [MIT License].
   
See the [LICENSE](LICENSE) file for details.

[ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601
[UNIX Epoch]: https://en.wikipedia.org/wiki/Unix_time
[MIT License]: https://opensource.org/license/mit/
[`hyperfine`]: https://github.com/sharkdp/hyperfine
