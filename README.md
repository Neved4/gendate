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

| Version | Run with                        | Runtime (≈)  |
| :------ | :------------------------------ | :----------- |
| **C**   | **`make gendate && ./gendate`** | **`156 ms`** |
| Rust    | `cargo run -r`                  | `213 ms`     |
| Go      | `go run gendate.go`             | `234 ms`     |
| Tcl     | `./gendate.tcl`                 | `501 ms`     |
| Haskell | `ghc gendate.hs && ./gendate`   | `715 ms`     |
| Python  | `./gendate.py`                  | `1.3 s`      |
| F#      | `dotnet run`                    | `1.4 s`      |
| C#      | `dotnet run`                    | `1.5 s`      |
| Scheme  | `csi gendate.scm`               | `1.5 s`      |
| Perl    | `./gendate.pl`                  | `2.3 s`      |
| Lua     | `./gendate.lua`                 | `3.3 s`      |
| Shell   | `./gendate.sh`                  | `10.5 m`     |

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

## Benchmarks

<div align="center">

| Variant |      Mean [ms] | Min [ms] | Max [ms] |     Relative |
| :------ | -------------: | -------: | -------: | -----------: |
| C       |    143.7 ± 4.4 |    140.5 |    168.9 |         1.00 |
| Rust    |   228.3 ± 17.4 |    209.6 |    315.4 |  1.59 ± 0.13 |
| Go      |   242.8 ± 12.2 |    225.1 |    274.1 |  1.69 ± 0.10 |
| Haskell |   659.5 ± 22.9 |    609.7 |    721.7 |  4.59 ± 0.21 |
| Scheme  | 1684.5 ± 117.4 |   1504.4 |   2237.5 | 11.72 ± 0.89 |

###### All programs were measured with [`hyperfine`].

</div>


## License

This repository is licensed under the terms of the [MIT License].
   
See the [LICENSE](LICENSE) file for details.

[ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601
[UNIX Epoch]: https://en.wikipedia.org/wiki/Unix_time
[MIT License]: https://opensource.org/license/mit/
[`hyperfine`]: https://github.com/sharkdp/hyperfine
