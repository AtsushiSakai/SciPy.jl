# scipy.io

```@docs
io
```

## scipy.io.hb_write, scipy.ip.hb_read

- [scipy\.io\.hb\_read Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.io.hb_read.html#scipy.io.hb_read)
- [scipy\.io\.hb\_write Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.io.hb_write.html#scipy.io.hb_write)

```@example
using SciPy # hide
data = sparse.csr_matrix(sparse.eye(3))  # create a sparse matrix
io.hb_write("data.hb", data)  # write a hb file
io.hb_read("data.hb").todense()  # read a hb file
```

