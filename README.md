# `dategen` - Generate dates! ⌚️

List dates from January 1, 1970 ([UNIX Epoch]) to 3000 AD, including leap years.

Dates are printed using [ISO 8601] format.

`cd` to `src/variant`, then compile with the command from table below:

<div align="center">

| Version | Run with                                     | Benchmark (≈)  |
| :------ | :------------------------------------------- | :------------- |
| **C**   | **`make gendate && ./gendate`**              | **`168.7 ms`** |
| Go      | `go build gendate.go && ./gendate`           | `236.2 ms`     |
| Scheme  | `csc gendate.scm && ./gendate`               | `1.995 s`      |
| Haskell | `ghc gendate.hs -o gendate && ./gendate`     | `2.063 s`      |
| Perl    | `./gendate.pl`                               | `2.310 s`      |
| Lua     | `./gendate.lua`                              | `3.696s`       |
| Shell   | `./gendate.sh`                               | `10 m 35 s`    |
| Rust    | `cargo build -r && ./target/release/gendate` | `1.011 s`      |

###### All programs were measured with [`hyperfine`].

</div>

## Output

Each program produces output similar to:
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
