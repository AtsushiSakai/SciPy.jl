# scipy.odr

scipy.odr module

- [Orthogonal distance regression (scipy.odr) Reference Guide](https://docs.scipy.org/doc/scipy/reference/odr.html)


## polynomial

- [scipy\.odr\.polynomial Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.odr.polynomial.html#scipy.odr.polynomial)

```@example
using SciPy # hide
using PyPlot # hide
using Distributions # hide
close("all") # hide

x = collect(0.0:0.1:5.0)
y = sin.(x)
poly_model = odr.polynomial(3)  # using third order polynomial model
data = odr.Data(x, y)
odr_obj = odr.ODR(data, poly_model)
output = odr_obj.run()  # running ODR fitting
a = output.beta
y_odr = a[4].*x.^3+a[3].*x.^2+a[2].*x.^1 .+ a[1]
plt.plot(x, y, label="input data")
plt.plot(x, y_odr, label="polynomial ODR")#
plt.legend()
savefig("ODR.png") # hide
```

![](ODR.png)




