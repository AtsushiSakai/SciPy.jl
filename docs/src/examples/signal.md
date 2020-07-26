# scipy.signal

scipy.signal module

- [Signal processing (scipy.signal) Reference Guide](https://docs.scipy.org/doc/scipy/reference/signal.html)

## convolve

- [scipy\.signal\.convolve — SciPy Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.signal.convolve.html#scipy.signal.convolve)


```@example
using SciPy # hide
using PyPlot # hide
sig = repeat([0., 1., 0.], inner=100)
win = signal.hann(50)
filtered = signal.convolve(sig, win, mode="same") / sum(win)
fig, (ax_orig, ax_win, ax_filt) = plt.subplots(3, 1, sharex=true)
ax_orig.plot(sig)
ax_orig.set_title("Original pulse")
ax_orig.margins(0, 0.1)
ax_win.plot(win)
ax_win.set_title("Filter impulse response")
ax_win.margins(0, 0.1)
ax_filt.plot(filtered)
ax_filt.set_title("Filtered signal")
ax_filt.margins(0, 0.1)
fig.tight_layout()
savefig("convolve.png") # hide
```

![](convolve.png)

