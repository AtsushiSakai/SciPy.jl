# scipy.optimize

```@docs
optimize
```

## linprog

- [scipy\.optimize\.linprog Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.linprog.html#scipy.optimize.linprog)

```@example
using SciPy # hide
A = [-3 1; 
      1 2]
b = [6, 4]
c = [-1, 4]
x0_bounds = (nothing, nothing)
x1_bounds = (-3, nothing)
res = optimize.linprog(c, A_ub=A, b_ub=b, bounds=[x0_bounds, x1_bounds])
```



