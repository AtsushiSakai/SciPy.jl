# scipy.ndimage

```@docs
ndimage
```

## convolve

- [scipy\.ndimage\.convolve Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.ndimage.convolve.html#scipy.ndimage.convolve)

```@example
using SciPy # hide

c = [2 0 1;
     1 0 0;
     0 0 0]
k = [0 1 0;
     0 1 0;
     0 1 0;
     0 1 0;
     0 1 0]
ndimage.convolve(c, k, mode="nearest")
```

