# scipy.stats

scipy.stats module

- [Statistical functions (scipy.stats) Reference Guide](https://docs.scipy.org/doc/scipy/reference/stats.html)

## describe

- [scipy\.stats\.describe Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.describe.html#scipy.stats.describe)


```@example
using SciPy # hide

a = collect(0:10)
println(stats.describe(a))

b = [1 2; 3 4]
println(stats.describe(b))
```

