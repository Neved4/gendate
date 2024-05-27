# `dategen` - Generate dates! ⌚️

List dates from 1970 ([UNIX Epoch]) to 3000 AD, including leap years.

Dates are printed using [ISO 8601] format.

`cd` to `src/variant`, then compile with the table below:

| Version     | Compile or run with                             |
| :---------- | :---------------------------------------------- |
| **C**       | `make gendate && ./gendate`                     |
| **Go**      | `go build gendate.go && ./gendate`              |
| **Scheme**  | `csc gendate.scm && ./gendate`                  |
| **Shell**   | `./gendate.sh`                                  |
| **Haskell** | `ghc --make gendate.hs -o gendate && ./gendate` |
| **Perl**    | `./gendate.pl`                                  |
| **Lua**     | `./gendate.lua`                                 |

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

## Benchmarks

Each program was measured with [`hyperfine`]:

- C version: ≈ `168.7 ms`
- Go version: ≈ `236.2 ms`
- Scheme version: ≈ `1.995 s`
- Haskell version: ≈ `2.063 s`
- Perl version: ≈ `	2.310 s`
- Lua version: ≈ `3.696s`
- Shell version: ≈ `10 m 35 s`

## License

This repository is licensed under the terms of the [MIT License].
   
See the [LICENSE](LICENSE) file for details.

[ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601
[UNIX Epoch]: https://en.wikipedia.org/wiki/Unix_time
[MIT License]: https://opensource.org/license/mit/
[`hyperfine`]: https://github.com/sharkdp/hyperfine
