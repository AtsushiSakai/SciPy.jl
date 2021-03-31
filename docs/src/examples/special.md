# scipy.spetial

scipy.spetial module

- [Special functions (scipy.special) Reference Guide](https://docs.scipy.org/doc/scipy/reference/special.html)

## airy

[scipy\.special\.airy Reference Guide](http://scipy.github.io/devdocs/generated/scipy.special.airy.html#scipy.special.airy)


```@example
using SciPy # hide
using PyPlot # hide
using Distributions # hide
close("all") # hide

x = range(-15, stop=5, length=201)
ai, aip, bi, bip = SciPy.special.airy(x)
plot(x, ai, "r", label="Ai(x)")
plot(x, bi, "b--", label="Bi(x)")
ylim(-0.5, 1.0)
grid()
legend(loc="upper left")
savefig("airy.png") # hide
```

![](airy.png)



