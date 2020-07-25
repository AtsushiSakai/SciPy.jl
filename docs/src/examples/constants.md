# scipy.constants

```@docs
constants
```

## scipy.constants.physical_constants

- [Constants \(scipy\.constants\) Reference Guide](https://docs.scipy.org/doc/scipy/reference/constants.html#scipy.constants.physical_constants)

```@example
using SciPy # hide
println(SciPy.constants.physical_constants["electron mass"])
```

## scipy.constants.convert_temperature

- [scipy\.constants\.convert\_temperature Reference Guide](https://docs.scipy.org/doc/scipy/reference/generated/scipy.constants.convert_temperature.html#scipy.constants.convert_temperature)

```@example
using SciPy # hide
println(SciPy.constants.convert_temperature([-40, 40.0], "Celsius", "Kelvin"))
```


