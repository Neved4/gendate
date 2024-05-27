# `dategen` - Generate dates! ⌚️

List dates from 1970 ([UNIX Epoch]) to 3000 AD, including leap years.

Dates are printed using [ISO 8601] format.

### C version

Compile with:
```
$ cd src/c && make gendate
```

Run it with:
```console
$ ./gendate | head -n4
1970-01-01
1970-01-02
1970-01-03
1970-01-04
```

### Go version

Compile:
```
$ cd src/go && go build gendate.go
```

Run:
```console
$ ./gendate | head -n4
1970-01-01
1970-01-02
1970-01-03
1970-01-04
```

### Chicken Scheme

Compile:
```
$ cd src/scheme && csc ./gendate.scm
```

Run it with:
```console
$ ./gendate | head -n4
1970-01-01
1970-01-02
1970-01-03
1970-01-04
```

### Shell version

Run it with:
```console
$ ./gendate.sh | head -n4
1970-01-01
1970-01-02
1970-01-03
1970-01-04
```

## Benchmarks

- C version: ≈ `168.7 ms`
- Go version: ≈ `236.2 ms`
- Scheme version: ≈ `1.622 s`
- Shell version: ≈ `10 m 35 s`

## License

This repository is licensed under the terms of the [MIT License].
   
See the [LICENSE](LICENSE) file for details.

[ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601
[UNIX Epoch]: https://en.wikipedia.org/wiki/Unix_time
[MIT License]: https://opensource.org/license/mit/
