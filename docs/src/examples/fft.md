# scipy.fft

scipy.fft module

- [Discrete Fourier transforms (scipy.fft) Reference Guide](https://docs.scipy.org/doc/scipy/reference/fft.html)


## scipy.fft.fft

- [scipy\.fft\.fft Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.fft.fft.html#scipy.fft.fft)

```@example
using SciPy # hide
using PyPlot # hide
close("all") # hide
t = collect(0:256)
sp = fft.fftshift(fft.fft(sin.(t)))
freq = fft.fftshift(fft.fftfreq(size(t)[end]))
plot(freq, real(sp), freq, imag(sp))
savefig("fft.png") # hide
```

![](fft.png)


