# `dategen` - Generate dates! ⌚️

List dates from 1970 ([UNIX Epoch]) to 3000 AD, including leap years.

Dates are printed using [ISO 8601] format.

| Version     | Compile with                       | Run                   |
| :---------- | :--------------------------------- | :-------------------- |
| **C**       | `cd src/c && make gendate`         | `./gendate`           |
| **Go**      | `cd src/go && go build gendate.go` | `./gendate`           |
| **Scheme**  | `cd src/scheme && csc gendate.scm` | `./gendate`           |
| **Shell**   |                                    | `./src/sh/gendate.sh` |
| **Haskell** | `cd src/hs && ghc --make gendate.hs -o gendate` | `./gendate` |

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
- Scheme version: ≈ `1.622 s`
- Shell version: ≈ `10 m 35 s`
- Haskell version: ≈ `2.063 s`

## License

This repository is licensed under the terms of the [MIT License].
   
See the [LICENSE](LICENSE) file for details.

[ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601
[UNIX Epoch]: https://en.wikipedia.org/wiki/Unix_time
[MIT License]: https://opensource.org/license/mit/
[`hyperfine`]: https://github.com/sharkdp/hyperfine
