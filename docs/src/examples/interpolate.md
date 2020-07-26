# scipy.interpolate

scipy.interpolate module

- [Interpolation (scipy.interpolate) Reference Guide](https://docs.scipy.org/doc/scipy/reference/interpolate.html)


## scipy.interpolate.interp1d

- [scipy\.interpolate\.interp1d Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.interpolate.interp1d.html#scipy.interpolate.interp1d)


```@example
using SciPy # hide
using PyPlot # hide
using Distributions # hide
close("all") # hide
x = collect(0.0:10.0)
y = exp.(-x/3.0)
plot(x, y, "o")
for kind in ["linear", "nearest", "zero", "slinear", "quadratic", "cubic", "previous", "next"]
    f = interpolate.interp1d(x, y, kind=kind)
    xnew = collect(0:0.1:10)
    ynew = f(xnew)
    plot(xnew, ynew, "-", label=kind)
end
legend()
savefig("interp1d.png") # hide
```

![](interp1d.png)




