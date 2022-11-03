"""
convert_temperature(val, old_scale, new_scale)

    Convert from a temperature scale to another one among Celsius, Kelvin,
    Fahrenheit, and Rankine scales.

    Parameters
    ----------
    val : array_like
        Value(s) of the temperature(s) to be converted expressed in the
        original scale.

    old_scale: str
        Specifies as a string the original scale from which the temperature
        value(s) will be converted. Supported scales are Celsius ('Celsius',
        'celsius', 'C' or 'c'), Kelvin ('Kelvin', 'kelvin', 'K', 'k'),
        Fahrenheit ('Fahrenheit', 'fahrenheit', 'F' or 'f'), and Rankine
        ('Rankine', 'rankine', 'R', 'r').

    new_scale: str
        Specifies as a string the new scale to which the temperature
        value(s) will be converted. Supported scales are Celsius ('Celsius',
        'celsius', 'C' or 'c'), Kelvin ('Kelvin', 'kelvin', 'K', 'k'),
        Fahrenheit ('Fahrenheit', 'fahrenheit', 'F' or 'f'), and Rankine
        ('Rankine', 'rankine', 'R', 'r').

    Returns
    -------
    res : float or array of floats
        Value(s) of the converted temperature(s) expressed in the new scale.

    Notes
    -----
    .. versionadded:: 0.18.0

    Examples
    --------
    >>> from scipy.constants import convert_temperature
    >>> convert_temperature(np.array([-40, 40]), 'Celsius', 'Kelvin')
    array([ 233.15,  313.15])
"""
convert_temperature(args...; kws...) = pycall(pyconstants.convert_temperature, PyAny, args...; kws...)

"""
find(sub=None, disp=False)

    Return list of physical_constant keys containing a given string.

    Parameters
    ----------
    sub : str, unicode
        Sub-string to search keys for. By default, return all keys.
    disp : bool
        If True, print the keys that are found and return None.
        Otherwise, return the list of keys without printing anything.

    Returns
    -------
    keys : list or None
        If `disp` is False, the list of keys is returned.
        Otherwise, None is returned.

    Examples
    --------
    >>> from scipy.constants import find, physical_constants

    Which keys in the ``physical_constants`` dictionary contain 'boltzmann'?

    >>> find('boltzmann')
    ['Boltzmann constant',
     'Boltzmann constant in Hz/K',
     'Boltzmann constant in eV/K',
     'Boltzmann constant in inverse meter per kelvin',
     'Stefan-Boltzmann constant']

    Get the constant called 'Boltzmann constant in Hz/K':

    >>> physical_constants['Boltzmann constant in Hz/K']
    (20836619120.0, 'Hz K^-1', 0.0)

    Find constants with 'radius' in the key:

    >>> find('radius')
    ['Bohr radius',
     'classical electron radius',
     'deuteron rms charge radius',
     'proton rms charge radius']
    >>> physical_constants['classical electron radius']
    (2.8179403262e-15, 'm', 1.3e-24)
"""
find(args...; kws...) = pycall(pyconstants.find, PyAny, args...; kws...)

"""
lambda2nu(lambda_)

    Convert wavelength to optical frequency

    Parameters
    ----------
    lambda_ : array_like
        Wavelength(s) to be converted.

    Returns
    -------
    nu : float or array of floats
        Equivalent optical frequency.

    Notes
    -----
    Computes ``nu = c / lambda`` where c = 299792458.0, i.e., the
    (vacuum) speed of light in meters/second.

    Examples
    --------
    >>> from scipy.constants import lambda2nu, speed_of_light
    >>> lambda2nu(np.array((1, speed_of_light)))
    array([  2.99792458e+08,   1.00000000e+00])
"""
lambda2nu(args...; kws...) = pycall(pyconstants.lambda2nu, PyAny, args...; kws...)

"""
nu2lambda(nu)

    Convert optical frequency to wavelength.

    Parameters
    ----------
    nu : array_like
        Optical frequency to be converted.

    Returns
    -------
    lambda : float or array of floats
        Equivalent wavelength(s).

    Notes
    -----
    Computes ``lambda = c / nu`` where c = 299792458.0, i.e., the
    (vacuum) speed of light in meters/second.

    Examples
    --------
    >>> from scipy.constants import nu2lambda, speed_of_light
    >>> nu2lambda(np.array((1, speed_of_light)))
    array([  2.99792458e+08,   1.00000000e+00])
"""
nu2lambda(args...; kws...) = pycall(pyconstants.nu2lambda, PyAny, args...; kws...)

"""
precision(key)

    Relative precision in physical_constants indexed by key

    Parameters
    ----------
    key : Python string or unicode
        Key in dictionary `physical_constants`

    Returns
    -------
    prec : float
        Relative precision in `physical_constants` corresponding to `key`

    Examples
    --------
    >>> from scipy import constants
    >>> constants.precision(u'proton mass')
    5.1e-37
"""
precision(args...; kws...) = pycall(pyconstants.precision, PyAny, args...; kws...)

"""
unit(key)

    Unit in physical_constants indexed by key

    Parameters
    ----------
    key : Python string or unicode
        Key in dictionary `physical_constants`

    Returns
    -------
    unit : Python string
        Unit in `physical_constants` corresponding to `key`

    Examples
    --------
    >>> from scipy import constants
    >>> constants.unit(u'proton mass')
    'kg'
"""
unit(args...; kws...) = pycall(pyconstants.unit, PyAny, args...; kws...)

"""
value(key)

    Value in physical_constants indexed by key

    Parameters
    ----------
    key : Python string or unicode
        Key in dictionary `physical_constants`

    Returns
    -------
    value : float
        Value in `physical_constants` corresponding to `key`

    Examples
    --------
    >>> from scipy import constants
    >>> constants.value(u'elementary charge')
    1.602176634e-19
"""
value(args...; kws...) = pycall(pyconstants.value, PyAny, args...; kws...)

"""
ConstantWarning
Accessing a constant no longer in current CODATA data set
"""
ConstantWarning(args...; kws...) = pycall(pyconstants.ConstantWarning, PyAny, args...; kws...)

const Avogadro = 6.02214076e23

const Boltzmann = 1.380649e-23

const Btu = 1055.05585262

const Btu_IT = 1055.05585262

const Btu_th = 1054.3502644888888

const G = 6.6743e-11

const Julian_year = 3.15576e7

const N_A = 6.02214076e23

const Planck = 6.62607015e-34

const R = 8.314462618

const Rydberg = 1.097373156816e7

const Stefan_Boltzmann = 5.670374419e-8

const Wien = 0.002897771955

const acre = 4046.8564223999992

const alpha = 0.0072973525693

const angstrom = 1.0e-10

const arcmin = 0.0002908882086657216

const arcminute = 0.0002908882086657216

const arcsec = 4.84813681109536e-6

const arcsecond = 4.84813681109536e-6

const astronomical_unit = 1.495978707e11

const atm = 101325.0

const atmosphere = 101325.0

const atomic_mass = 1.6605390666e-27

const atto = 1.0e-18

const au = 1.495978707e11

const bar = 100000.0

const barrel = 0.15898729492799998

const bbl = 0.15898729492799998

const blob = 175.12683524647636

const c = 2.99792458e8

const calorie = 4.184

const calorie_IT = 4.1868

const calorie_th = 4.184

const carat = 0.0002

const centi = 0.01

const day = 86400.0

const deci = 0.1

const degree = 0.017453292519943295

const degree_Fahrenheit = 0.5555555555555556

const deka = 10.0

const dyn = 1.0e-5

const dyne = 1.0e-5

const e = 1.602176634e-19

const eV = 1.602176634e-19

const electron_mass = 9.1093837015e-31

const electron_volt = 1.602176634e-19

const elementary_charge = 1.602176634e-19

const epsilon_0 = 8.8541878128e-12

const erg = 1.0e-7

const exa = 1.0e18

const exbi = 1152921504606846976

const femto = 1.0e-15

const fermi = 1.0e-15

const fine_structure = 0.0072973525693

const fluid_ounce = 2.9573529562499998e-5

const fluid_ounce_US = 2.9573529562499998e-5

const fluid_ounce_imp = 2.84130625e-5

const foot = 0.30479999999999996

const g = 9.80665

const gallon = 0.0037854117839999997

const gallon_US = 0.0037854117839999997

const gallon_imp = 0.00454609

const gas_constant = 8.314462618

const gibi = 1073741824

const giga = 1.0e9

const golden = 1.618033988749895

const golden_ratio = 1.618033988749895

const grain = 6.479891e-5

const gram = 0.001

const gravitational_constant = 6.6743e-11

const h = 6.62607015e-34

const hbar = 1.0545718176461565e-34

const hectare = 10000.0

const hecto = 100.0

const horsepower = 745.6998715822701

const hour = 3600.0

const hp = 745.6998715822701

const inch = 0.0254

const k = 1.380649e-23

const kgf = 9.80665

const kibi = 1024

const kilo = 1000.0

const kilogram_force = 9.80665

const kmh = 0.2777777777777778

const knot = 0.5144444444444445

const lb = 0.45359236999999997

const lbf = 4.4482216152605

const light_year = 9.4607304725808e15

const liter = 0.001

const litre = 0.001

const long_ton = 1016.0469088

const m_e = 9.1093837015e-31

const m_n = 1.67492749804e-27

const m_p = 1.67262192369e-27

const m_u = 1.6605390666e-27

const mach = 340.5

const mebi = 1048576

const mega = 1.0e6

const metric_ton = 1000.0

const micro = 1.0e-6

const micron = 1.0e-6

const mil = 2.5399999999999997e-5

const mile = 1609.3439999999998

const milli = 0.001

const minute = 60.0

const mmHg = 133.32236842105263

const mph = 0.44703999999999994

const mu_0 = 1.25663706212e-6

const nano = 1.0e-9

const nautical_mile = 1852.0

const neutron_mass = 1.67492749804e-27

const ounce = 0.028349523124999998

const oz = 0.028349523124999998

const parsec = 3.085677581491367e16

const pebi = 1125899906842624

const peta = 1.0e15

const physical_constants = Dict{Any, Any}("electron mass energy equivalent in MeV" => (0.51099895, "MeV", 1.5e-10), "electron-proton mass ratio" => (0.000544617021487, "", 3.3e-14), "proton Compton wavelength" => (1.32140985539e-15, "m", 4.0e-25), "deuteron mass energy equivalent in MeV" => (1875.61294257, "MeV", 5.7e-7), "atomic mass constant energy equivalent" => (1.4924180856e-10, "J", 4.5e-20), "atomic unit of charge" => (1.602176634e-19, "C", 0.0), "shielded helion gyromag. ratio over 2 pi" => (32.43409966, "MHz T^-1", 4.3e-7), "Mo x unit" => (1.00209952e-13, "m", 5.3e-20), "electron-deuteron magn. moment ratio" => (-2143.923493, "", 2.3e-5), "alpha particle mass energy equivalent in MeV" => (3727.3794066, "MeV", 1.1e-6), "neutron Compton wavelength" => (1.31959090581e-15, "m", 7.5e-25), "atomic unit of energy" => (4.3597447222071e-18, "J", 8.5e-30), "atomic unit of electric dipole mom." => (8.4783536255e-30, "C m", 1.3e-39), "elementary charge over h-bar" => (1.519267447e15, "A J^-1", 0.0), "Planck constant over 2 pi in eV s" => (6.582119514e-16, "eV s", 4.0e-24), "Bohr radius" => (5.29177210903e-11, "m", 8.0e-21), "shielded proton magn. moment to Bohr magneton ratio" => (0.001520993132, "", 1.6e-11), "atomic unit of mag. flux density" => (235051.756758, "T", 7.1e-5), "Bohr magneton in eV/T" => (5.788381806e-5, "eV T^-1", 1.7e-14), "electron to shielded helion mag. mom. ratio" => (864.058257, "", 1.0e-5), "molar Planck constant times c" => (0.119626565582, "J m mol^-1", 5.4e-11), "proton-neutron mag. mom. ratio" => (-1.45989805, "", 3.4e-7), "Planck mass" => (2.176434e-8, "kg", 2.4e-13), "proton magn. moment" => (1.41060671e-26, "J T^-1", 1.2e-33), "atomic mass unit-joule relationship" => (1.4924180856e-10, "J", 4.5e-20), "standard atmosphere" => (101325.0, "Pa", 0.0), "helion shielding shift" => (5.996743e-5, "", 1.0e-10), "reduced Planck constant in eV s" => (6.582119569e-16, "eV s", 0.0), "neutron molar mass" => (0.0010086649156, "kg mol^-1", 5.7e-13), "deuteron rms charge radius" => (2.12799e-15, "m", 7.4e-19), "first radiation constant for spectral radiance" => (1.191042972e-16, "W m^2 sr^-1", 0.0), "classical electron radius" => (2.8179403262e-15, "m", 1.3e-24), "nuclear magneton in inverse meter per tesla" => (0.0254262341353, "m^-1 T^-1", 7.8e-12), "neutron to shielded proton mag. mom. ratio" => (-0.68499694, "", 1.6e-7), "neutron gyromag. ratio in MHz/T" => (29.1646931, "MHz T^-1", 6.9e-6), "tau-electron mass ratio" => (3477.23, "", 0.23), "triton mag. mom. to Bohr magneton ratio" => (0.0016223936651, "", 3.2e-12), "reduced proton Compton wavelength" => (2.10308910336e-16, "m", 6.4e-26), "muon-proton magn. moment ratio" => (-3.183345118, "", 8.9e-8), "helion-electron mass ratio" => (5495.88528007, "", 2.4e-7), "conductance quantum" => (7.748091729e-5, "S", 0.0), "electron volt-kilogram relationship" => (1.782661921e-36, "kg", 0.0), "electron magn. moment anomaly" => (0.0011596521859, "", 3.8e-12), "joule-kilogram relationship" => (1.1126500560536185e-17, "kg", 0.0), "kelvin-joule relationship" => (1.380649e-23, "J", 0.0), "neutron mag. mom." => (-9.6623651e-27, "J T^-1", 2.3e-33), "deuteron-electron magn. moment ratio" => (-0.0004664345548, "", 5.0e-12), "tau mass energy equivalent in MeV" => (1776.82, "MeV", 0.16), "alpha particle mass energy equivalent" => (5.9719201914e-10, "J", 1.8e-19), "muon Compton wavelength over 2 pi" => (1.867594308e-15, "m", 4.2e-23), "helion relative atomic mass" => (3.014932247175, "", 9.7e-11), "muon molar mass" => (0.0001134289259, "kg mol^-1", 2.5e-12), "triton to proton mag. mom. ratio" => (1.0666399191, "", 2.1e-9), "electron to shielded helion magn. moment ratio" => (864.058255, "", 1.0e-5), "electron-deuteron mag. mom. ratio" => (-2143.9234915, "", 5.6e-6), "electron g factor" => (-2.00231930436256, "", 3.5e-13), "muon magn. moment to nuclear magneton ratio" => (-8.89059698, "", 2.3e-7), "deuteron-proton mass ratio" => (1.99900750139, "", 1.1e-10), "electron magn. moment to nuclear magneton ratio" => (-1838.28197107, "", 8.5e-7), "alpha particle molar mass" => (0.0040015061777, "kg mol^-1", 1.2e-12), "electron gyromag. ratio over 2 pi" => (28024.95164, "MHz T^-1", 0.00017), "neutron-tau mass ratio" => (0.528779, "", 3.6e-5), "kilogram-electron volt relationship" => (5.609588603e35, "eV", 0.0), "neutron gyromagn. ratio over 2 pi" => (29.164695, "MHz T^-1", 7.3e-6), "kilogram-atomic mass unit relationship" => (6.0221407621e26, "u", 1.8e17), "magn. constant" => (1.2566370614e-6, "N A^-2", 0.0), "proton-neutron magn. moment ratio" => (-1.45989805, "", 3.4e-7), "magn. flux quantum" => (2.067833848e-15, "Wb", 0.0), "lattice spacing of silicon" => (1.920155762e-10, "m", 5.0e-18), "shielded proton magn. moment" => (1.41057047e-26, "J T^-1", 1.2e-33), "inverse meter-hertz relationship" => (2.99792458e8, "Hz", 0.0), "shielded proton mag. mom. to nuclear magneton ratio" => (2.792775599, "", 3.0e-8), "Stefan-Boltzmann constant" => (5.670374419e-8, "W m^-2 K^-4", 0.0), "fine-structure constant" => (0.0072973525693, "", 1.1e-12), "Fermi coupling constant" => (1.1663787e-5, "GeV^-2", 6.0e-12), "neutron-electron mag. mom. ratio" => (0.00104066882, "", 2.5e-10), "proton g factor" => (5.5856946893, "", 1.6e-9), "proton-tau mass ratio" => (0.528051, "", 3.6e-5), "vacuum electric permittivity" => (8.8541878128e-12, "F m^-1", 1.3e-21), "atomic unit of 1st hyperpolarizablity" => (3.20636151e-53, "C^3 m^3 J^-2", 2.8e-60), "deuteron-neutron magn. moment ratio" => (-0.44820652, "", 1.1e-7), "characteristic impedance of vacuum" => (376.73031366686166, "ohm", 5.61366546036269e-8), "muon mass energy equivalent in MeV" => (105.6583755, "MeV", 2.3e-6), "electron volt-hertz relationship" => (2.417989242e14, "Hz", 0.0), "Wien wavelength displacement law constant" => (0.002897771955, "m K", 0.0), "atomic unit of electric field" => (5.14220674763e11, "V m^-1", 78.0), "hartree-atomic mass unit relationship" => (2.92126232205e-8, "u", 8.8e-18), "atomic unit of magn. flux density" => (235051.756758, "T", 7.1e-5), "electron mag. mom. anomaly" => (0.00115965218128, "", 1.8e-13), "Avogadro constant" => (6.02214076e23, "mol^-1", 0.0), "alpha particle mass in u" => (4.001506179127, "u", 6.3e-11), "helion mass energy equivalent" => (4.4995394125e-10, "J", 1.4e-19), "electron gyromag. ratio in MHz/T" => (28024.9514242, "MHz T^-1", 8.5e-6), "conventional value of coulomb-90" => (1.00000008887, "C", 0.0), "atomic unit of electric polarizability" => (1.64877727436e-41, "C^2 m^2 J^-1", 5.0e-51), "atomic unit of electric quadrupole moment" => (4.48655124e-40, "C m^2", 3.9e-47), "hartree-kilogram relationship" => (4.8508702095432e-35, "kg", 9.4e-47), "electron mass" => (9.1093837015e-31, "kg", 2.8e-40), "electron-neutron mass ratio" => (0.00054386734424, "", 2.6e-13), "electron-proton mag. mom. ratio" => (-658.21068789, "", 2.0e-7), "neutron Compton wavelength over 2 pi" => (2.1001941536e-16, "m", 1.4e-25), "Planck constant" => (6.62607015e-34, "J Hz^-1", 0.0), "Rydberg constant times c in Hz" => (3.2898419602508e15, "Hz", 6400.0), "conventional value of watt-90" => (1.00000019553, "W", 0.0), "nuclear magneton in K/T" => (0.00036582677756, "K T^-1", 1.1e-13), "electron-helion mass ratio" => (0.0001819543074573, "", 7.9e-15), "inverse meter-electron volt relationship" => (1.239841984e-6, "eV", 0.0), "lattice spacing of ideal Si (220)" => (1.920155716e-10, "m", 3.2e-18), "deuteron molar mass" => (0.00201355321205, "kg mol^-1", 6.1e-13), "molar volume of ideal gas (273.15 K, 101.325 kPa)" => (0.02241396954, "m^3 mol^-1", 0.0), "shielded proton gyromag. ratio over 2 pi" => (42.57638507, "MHz T^-1", 5.3e-7), "natural unit of mass" => (9.1093837015e-31, "kg", 2.8e-40), "triton g factor" => (5.957924931, "", 1.2e-8), "deuteron-electron mag. mom. ratio" => (-0.0004664345551, "", 1.2e-12), "Planck constant in eV s" => (4.135667662e-15, "eV s", 2.5e-23), "natural unit of action in eV s" => (6.582119569e-16, "eV s", 0.0), "quantum of circulation times 2" => (0.00072738951032, "m^2 s^-1", 2.2e-13), "Sackur-Tetrode constant (1 K, 100 kPa)" => (-1.15170753706, "", 4.5e-10), "Planck constant over 2 pi times c in MeV fm" => (197.3269788, "MeV fm", 1.2e-6), "helion mass" => (5.0064127796e-27, "kg", 1.5e-36), "Loschmidt constant (273.15 K, 100 kPa)" => (2.651645804e25, "m^-3", 0.0), "shielded helion to shielded proton magn. moment ratio" => (-0.7617861313, "", 3.3e-9), "electron-neutron mag. mom. ratio" => (960.9205, "", 0.00023), "shielded helion gyromagn. ratio over 2 pi" => (32.4341015, "MHz T^-1", 2.8e-6), "Newtonian constant of gravitation over h-bar c" => (6.70883e-39, "(GeV/c^2)^-2", 1.5e-43), "atomic mass unit-hartree relationship" => (3.4231776874e7, "E_h", 0.01), "atomic unit of 1st hyperpolarizability" => (3.2063613061e-53, "C^3 m^3 J^-2", 1.5e-62), "atomic unit of 2nd hyperpolarizablity" => (6.2353808e-65, "C^4 m^4 J^-3", 1.1e-71), "shielded proton gyromag. ratio" => (2.675153151e8, "s^-1 T^-1", 2.9), "Cu x unit" => (1.00207697e-13, "m", 2.8e-20), "hartree-electron volt relationship" => (27.211386245988, "eV", 5.3e-11), "shielded proton magn. moment to nuclear magneton ratio" => (2.792775604, "", 3.0e-8), "Rydberg constant times hc in J" => (2.1798723611035e-18, "J", 4.2e-30), "electron mag. mom." => (-9.2847647043e-24, "J T^-1", 2.8e-33), "hyperfine transition frequency of Cs-133" => (9.19263177e9, "Hz", 0.0), "proton gyromagn. ratio" => (2.6752218744e8, "s^-1 T^-1", 0.11), "electron mag. mom. to nuclear magneton ratio" => (-1838.28197188, "", 1.1e-7), "atomic unit of 2nd hyperpolarizability" => (6.2353799905e-65, "C^4 m^4 J^-3", 3.8e-74), "neutron-proton mass difference energy equivalent" => (2.07214689e-13, "J", 7.4e-20), "joule-atomic mass unit relationship" => (6.7005352565e9, "u", 2.0), "elementary charge over h" => (2.417989262e14, "A J^-1", 1.5e6), "electron-triton mass ratio" => (0.0001819200062251, "", 9.0e-15), "Hartree energy" => (4.3597447222071e-18, "J", 8.5e-30), "electron gyromagn. ratio" => (1.76085963023e11, "s^-1 T^-1", 53.0), "atomic unit of time" => (2.4188843265857e-17, "s", 4.7e-29), "proton gyromag. ratio in MHz/T" => (42.577478518, "MHz T^-1", 1.8e-8), "hertz-atomic mass unit relationship" => (4.4398216652e-24, "u", 1.3e-33), "natural unit of momentum" => (2.730924488e-22, "kg m s^-1", 3.4e-30), "standard acceleration of gravity" => (9.80665, "m s^-2", 0.0), "reduced muon Compton wavelength" => (1.867594306e-15, "m", 4.2e-23), "proton relative atomic mass" => (1.007276466621, "", 5.3e-11), "triton-proton mass ratio" => (2.99371703414, "", 1.5e-10), "deuteron mag. mom. to nuclear magneton ratio" => (0.8574382338, "", 2.2e-9), "hartree-hertz relationship" => (6.579683920502e15, "Hz", 13000.0), "atomic unit of mom.um" => (1.992851882e-24, "kg m s^-1", 2.4e-32), "luminous efficacy" => (683.0, "lm W^-1", 0.0), "triton mass in u" => (3.01550071621, "u", 1.2e-10), "muon-tau mass ratio" => (0.0594635, "", 4.0e-6), "electron relative atomic mass" => (0.000548579909065, "", 1.6e-14), "muon Compton wavelength" => (1.17344411e-14, "m", 2.6e-22), "joule-hertz relationship" => (1.509190179e33, "Hz", 0.0), "shielded helion to proton magn. moment ratio" => (-0.761766562, "", 1.2e-8), "second radiation constant" => (0.01438776877, "m K", 0.0), "Bohr magneton in inverse meters per tesla" => (46.68644814, "m^-1 T^-1", 2.9e-7), "neutron gyromag. ratio" => (1.83247171e8, "s^-1 T^-1", 43.0), "electron gyromagn. ratio over 2 pi" => (28024.9532, "MHz T^-1", 0.0024), "shielding difference of t and p in HT" => (2.414e-8, "", 2.0e-11), "tau-neutron mass ratio" => (1.89115, "", 0.00013), "electron magn. moment to Bohr magneton ratio" => (-1.0011596521859, "", 3.8e-12), "Sackur-Tetrode constant (1 K, 101.325 kPa)" => (-1.16487052358, "", 4.5e-10), "electron volt" => (1.602176634e-19, "J", 0.0), "reduced Compton wavelength" => (3.8615926796e-13, "m", 1.2e-22), "conventional value of von Klitzing constant" => (25812.807, "ohm", 0.0), "electron to shielded proton mag. mom. ratio" => (-658.2275971, "", 7.2e-6), "Planck mass energy equivalent in GeV" => (1.22089e19, "GeV", 1.4e14), "shielded proton gyromag. ratio in MHz/T" => (42.57638474, "MHz T^-1", 4.6e-7), "proton molar mass" => (0.00100727646627, "kg mol^-1", 3.1e-13), "proton magn. shielding correction" => (2.5689e-5, "", 1.1e-8), "proton-muon mass ratio" => (8.88024337, "", 2.0e-7), "nuclear magneton in inverse meters per tesla" => (0.02542623432, "m^-1 T^-1", 1.6e-10), "helion g factor" => (-4.255250615, "", 5.0e-8), "triton-electron mass ratio" => (5496.92153573, "", 2.7e-7), "atomic unit of charge density" => (1.08120238457e12, "C m^-3", 490.0), "Loschmidt constant (273.15 K, 101.325 kPa)" => (2.686780111e25, "m^-3", 0.0), "proton-neutron mass ratio" => (0.99862347812, "", 4.9e-10), "alpha particle-proton mass ratio" => (3.97259969009, "", 2.2e-10), "conventional value of Josephson constant" => (4.835979e14, "Hz V^-1", 0.0), "atomic unit of mag. dipole mom." => (1.85480201566e-23, "J T^-1", 5.6e-33), "proton mass" => (1.67262192369e-27, "kg", 5.1e-37), "atomic unit of momentum" => (1.9928519141e-24, "kg m s^-1", 3.0e-34), "deuteron mag. mom." => (4.330735094e-27, "J T^-1", 1.1e-35), "deuteron-proton magn. moment ratio" => (0.3070122084, "", 4.5e-9), "conventional value of ampere-90" => (1.00000008887, "A", 0.0), "muon g factor" => (-2.0023318418, "", 1.3e-9), "tau mass energy equivalent" => (2.84684e-10, "J", 1.9e-14), "standard-state pressure" => (100000.0, "Pa", 0.0), "W to Z mass ratio" => (0.88153, "", 0.00017), "Rydberg constant times hc in eV" => (13.605693122994, "eV", 2.6e-11), "proton magn. moment to nuclear magneton ratio" => (2.792847351, "", 2.8e-8), "tau mass" => (3.16754e-27, "kg", 2.1e-31), "tau-muon mass ratio" => (16.817, "", 0.0011), "reduced neutron Compton wavelength" => (2.1001941552e-16, "m", 1.2e-25), "Planck length" => (1.616255e-35, "m", 1.8e-40), "shielded helion to proton mag. mom. ratio" => (-0.7617665618, "", 8.9e-9), "joule-kelvin relationship" => (7.242970516e22, "K", 0.0), "conventional value of volt-90" => (1.00000010666, "V", 0.0), "joule-electron volt relationship" => (6.241509074e18, "eV", 0.0), "hertz-kilogram relationship" => (7.372497323e-51, "kg", 0.0), "neutron-electron magn. moment ratio" => (0.00104066882, "", 2.5e-10), "helion molar mass" => (0.00301493224613, "kg mol^-1", 9.1e-13), "proton gyromagn. ratio over 2 pi" => (42.5774813, "MHz T^-1", 3.7e-6), "muon-proton mag. mom. ratio" => (-3.183345142, "", 7.1e-8), "shielded proton mag. mom." => (1.41057056e-26, "J T^-1", 1.5e-34), "tau Compton wavelength" => (6.97771e-16, "m", 4.7e-20), "triton mag. mom. to nuclear magneton ratio" => (2.9789624656, "", 5.9e-9), "deuteron mass energy equivalent" => (3.00506323102e-10, "J", 9.1e-20), "electron to alpha particle mass ratio" => (0.0001370933554787, "", 4.5e-15), "kilogram-joule relationship" => (8.987551787368176e16, "J", 0.0), "electron-muon mag. mom. ratio" => (206.7669883, "", 4.6e-6), "electron volt-inverse meter relationship" => (806554.3937, "m^-1", 0.0), "muon mag. mom. to nuclear magneton ratio" => (-8.89059703, "", 2.0e-7), "neutron magn. moment" => (-9.6623645e-27, "J T^-1", 2.4e-33), "atomic unit of mass" => (9.1093837015e-31, "kg", 2.8e-40), "electron-neutron magn. moment ratio" => (960.9205, "", 0.00023), "elementary charge" => (1.602176634e-19, "C", 0.0), "Bohr magneton" => (9.2740100783e-24, "J T^-1", 2.8e-33), "hartree-joule relationship" => (4.3597447222071e-18, "J", 8.5e-30), "shielded helion mag. mom. to nuclear magneton ratio" => (-2.127497719, "", 2.5e-8), "electron mag. mom. to Bohr magneton ratio" => (-1.00115965218128, "", 1.8e-13), "Faraday constant for conventional electric current" => (96485.3251, "C_90 mol^-1", 0.0012), "Planck constant in eV/Hz" => (4.135667696e-15, "eV Hz^-1", 0.0), "Boltzmann constant in inverse meters per kelvin" => (69.503457, "m^-1 K^-1", 4.0e-5), "quantum of circulation" => (0.00036369475516, "m^2 s^-1", 1.1e-13), "deuteron mass" => (3.3435837724e-27, "kg", 1.0e-36), "atomic unit of electric dipole moment" => (8.47835309e-30, "C m", 7.3e-37), "mag. flux quantum" => (2.067833848e-15, "Wb", 0.0), "helion mag. mom. to nuclear magneton ratio" => (-2.127625307, "", 2.5e-8), "shielded helion magn. moment to nuclear magneton ratio" => (-2.127497723, "", 2.5e-8), "triton mass" => (5.0073567446e-27, "kg", 1.5e-36), "deuteron-proton mag. mom. ratio" => (0.30701220939, "", 7.9e-10), "triton-proton mag. mom. ratio" => (1.066639908, "", 1.0e-8), "deuteron magn. moment to nuclear magneton ratio" => (0.8574382329, "", 9.2e-9), "Planck temperature" => (1.416784e32, "K", 1.6e27), "tau mass in u" => (1.90754, "u", 0.00013), "alpha particle relative atomic mass" => (4.001506179127, "", 6.3e-11), "Thomson cross section" => (6.6524587321e-29, "m^2", 6.0e-38), "neutron gyromag. ratio over 2 pi" => (29.1646933, "MHz T^-1", 6.9e-6), "joule-hartree relationship" => (2.2937122783963e17, "E_h", 450000.0), "Bohr magneton in inverse meter per tesla" => (46.686447783, "m^-1 T^-1", 1.4e-8), "neutron mass in u" => (1.00866491595, "u", 4.9e-10), "helion mass energy equivalent in MeV" => (2808.39160743, "MeV", 8.5e-7), "lattice parameter of silicon" => (5.431020511e-10, "m", 8.9e-18), "neutron-proton mass ratio" => (1.00137841931, "", 4.9e-10), "shielded helion to shielded proton mag. mom. ratio" => (-0.7617861313, "", 3.3e-9), "proton mass energy equivalent" => (1.50327761598e-10, "J", 4.6e-20), "deuteron-electron mass ratio" => (3670.48296788, "", 1.3e-7), "first radiation constant" => (3.741771852e-16, "W m^2", 0.0), "proton gyromag. ratio over 2 pi" => (42.57747892, "MHz T^-1", 2.9e-7), "tau Compton wavelength over 2 pi" => (1.11056e-16, "m", 1.0e-20), "inverse meter-atomic mass unit relationship" => (1.3310250501e-15, "u", 4.0e-25), "muon mag. mom. anomaly" => (0.00116592089, "", 6.3e-10), "atomic unit of velocity" => (2.18769126364e6, "m s^-1", 0.00033), "electron volt-atomic mass unit relationship" => (1.07354410233e-9, "u", 3.2e-19), "deuteron mag. mom. to Bohr magneton ratio" => (0.000466975457, "", 1.2e-12), "shielded helion gyromag. ratio" => (2.037894569e8, "s^-1 T^-1", 2.4), "proton mag. mom. to nuclear magneton ratio" => (2.79284734463, "", 8.2e-10), "Compton wavelength" => (2.42631023867e-12, "m", 7.3e-22), "hertz-hartree relationship" => (1.519829846057e-16, "E_h", 2.9e-28), "weak mixing angle" => (0.2229, "", 0.0003), "conventional value of farad-90" => (0.9999999822, "F", 0.0), "Josephson constant" => (4.835978484e14, "Hz V^-1", 0.0), "muon mass" => (1.883531627e-28, "kg", 4.2e-36), "Planck time" => (5.391247e-44, "s", 6.0e-49), "kilogram-kelvin relationship" => (6.50965726e39, "K", 0.0), "muon mag. mom. to Bohr magneton ratio" => (-0.00484197047, "", 1.1e-10), "Boltzmann constant" => (1.380649e-23, "J K^-1", 0.0), "triton mass energy equivalent" => (4.500387806e-10, "J", 1.4e-19), "electron to shielded proton magn. moment ratio" => (-658.2275956, "", 7.1e-6), "atomic unit of electric potential" => (27.211386245988, "V", 5.3e-11), "deuteron mass in u" => (2.013553212745, "u", 4.0e-11), "muon magn. moment to Bohr magneton ratio" => (-0.00484197045, "", 1.3e-10), "reduced tau Compton wavelength" => (1.110538e-16, "m", 7.5e-21), "speed of light in vacuum" => (2.99792458e8, "m s^-1", 0.0), "alpha particle mass" => (6.6446573357e-27, "kg", 2.0e-36), "inverse of conductance quantum" => (12906.40372, "ohm", 0.0), "triton-neutron mag. mom. ratio" => (-1.55718553, "", 3.7e-7), "molar mass constant" => (0.00099999999965, "kg mol^-1", 3.0e-13), "triton-electron mag. mom. ratio" => (-0.001620514423, "", 2.1e-11), "electron charge to mass quotient" => (-1.75882001076e11, "C kg^-1", 53.0), "proton-electron mass ratio" => (1836.15267343, "", 1.1e-7), "von Klitzing constant" => (25812.80745, "ohm", 0.0), "molar mass of carbon-12" => (0.0119999999958, "kg mol^-1", 3.6e-12), "reduced Planck constant" => (1.054571817e-34, "J s", 0.0), "hertz-kelvin relationship" => (4.799243073e-11, "K", 0.0), "hertz-electron volt relationship" => (4.135667696e-15, "eV", 0.0), "Boltzmann constant in inverse meter per kelvin" => (69.50348004, "m^-1 K^-1", 0.0), "hartree-kelvin relationship" => (315775.02480407, "K", 6.1e-7), "muon mass in u" => (0.1134289259, "u", 2.5e-9), "inverse meter-joule relationship" => (1.986445857e-25, "J", 0.0), "neutron-muon mass ratio" => (8.89248406, "", 2.0e-7), "hartree-inverse meter relationship" => (2.194746313632e7, "m^-1", 4.3e-5), "inverse meter-hartree relationship" => (4.556335252912e-8, "E_h", 8.8e-20), "{220} lattice spacing of silicon" => (1.920155714e-10, "m", 3.2e-18), "atomic mass unit-kelvin relationship" => (1.08095401916e13, "K", 3300.0), "neutron relative atomic mass" => (1.00866491595, "", 4.9e-10), "atomic unit of electric field gradient" => (9.7173624292e21, "V m^-2", 2.9e12), "proton mag. shielding correction" => (2.5689e-5, "", 1.1e-8), "kelvin-hartree relationship" => (3.1668115634556e-6, "E_h", 6.1e-18), "shielded proton mag. mom. to Bohr magneton ratio" => (0.001520993128, "", 1.7e-11), "electron gyromag. ratio" => (1.76085963023e11, "s^-1 T^-1", 53.0), "Boltzmann constant in eV/K" => (8.617333262e-5, "eV K^-1", 0.0), "atomic unit of action" => (1.054571817e-34, "J s", 0.0), "atomic mass unit-inverse meter relationship" => (7.5130066104e14, "m^-1", 230000.0), "neutron-proton mag. mom. ratio" => (-0.68497934, "", 1.6e-7), "molar gas constant" => (8.314462618, "J mol^-1 K^-1", 0.0), "electron volt-kelvin relationship" => (11604.51812, "K", 0.0), "Bohr magneton in Hz/T" => (1.39962449361e10, "Hz T^-1", 4.2), "neutron-proton mass difference energy equivalent in MeV" => (1.29333236, "MeV", 4.6e-7), "vacuum mag. permeability" => (1.25663706212e-6, "N A^-2", 1.9e-16), "Newtonian constant of gravitation" => (6.6743e-11, "m^3 kg^-1 s^-2", 1.5e-15), "kelvin-atomic mass unit relationship" => (9.2510873014e-14, "u", 2.8e-23), "natural unit of mom.um in MeV/c" => (0.5109989461, "MeV/c", 3.1e-9), "kelvin-electron volt relationship" => (8.617333262e-5, "eV", 0.0), "natural unit of energy" => (8.1871057769e-14, "J", 2.5e-23), "nuclear magneton in eV/T" => (3.15245125844e-8, "eV T^-1", 9.6e-18), "Compton wavelength over 2 pi" => (3.8615926764e-13, "m", 1.8e-22), "atomic unit of magnetizability" => (7.8910366008e-29, "J T^-2", 4.8e-38), "shielded helion magn. moment to Bohr magneton ratio" => (-0.001158671474, "", 1.4e-11), "neutron mass" => (1.67492749804e-27, "kg", 9.5e-37), "kelvin-kilogram relationship" => (1.536179187e-40, "kg", 0.0), "nuclear magneton" => (5.0507837461e-27, "J T^-1", 1.5e-36), "mag. constant" => (1.25663706212e-6, "N A^-2", 1.9e-16), "natural unit of velocity" => (2.99792458e8, "m s^-1", 0.0), "neutron mass energy equivalent" => (1.50534976287e-10, "J", 8.6e-20), "proton mass in u" => (1.007276466621, "u", 5.3e-11), "atomic mass unit-electron volt relationship" => (9.3149410242e8, "eV", 0.28), "muon-electron mass ratio" => (206.768283, "", 4.6e-6), "atomic unit of current" => (0.00662361823751, "A", 1.3e-14), "electron molar mass" => (5.4857990888e-7, "kg mol^-1", 1.7e-16), "shielded helion mag. mom. to Bohr magneton ratio" => (-0.001158671471, "", 1.4e-11), "neutron magn. moment to nuclear magneton ratio" => (-1.91304273, "", 4.5e-7), "Rydberg constant" => (1.097373156816e7, "m^-1", 2.1e-5), "triton molar mass" => (0.00301550071517, "kg mol^-1", 9.2e-13), "proton mag. mom. to Bohr magneton ratio" => (0.0015210322023, "", 4.6e-13), "neutron magn. moment to Bohr magneton ratio" => (-0.00104187563, "", 2.5e-10), "proton rms charge radius" => (8.414e-16, "m", 1.9e-18), "nuclear magneton in MHz/T" => (7.6225932291, "MHz T^-1", 2.3e-9), "tau-proton mass ratio" => (1.89376, "", 0.00013), "hertz-inverse meter relationship" => (3.3356409519815204e-9, "m^-1", 0.0), "neutron-electron mass ratio" => (1838.68366173, "", 8.9e-7), "kelvin-hertz relationship" => (2.083661912e10, "Hz", 0.0), "muon-proton mass ratio" => (0.1126095264, "", 2.5e-9), "joule-inverse meter relationship" => (5.034116567e24, "m^-1", 0.0), "alpha particle-electron mass ratio" => (7294.29954142, "", 2.4e-7), "kilogram-hartree relationship" => (2.0614857887409e34, "E_h", 4.0e22), "atomic unit of length" => (5.29177210903e-11, "m", 8.0e-21), "helion mass in u" => (3.014932247175, "u", 9.7e-11), "neutron gyromagn. ratio" => (1.83247171e8, "s^-1 T^-1", 43.0), "neutron mag. mom. to nuclear magneton ratio" => (-1.91304273, "", 4.5e-7), "electron mass energy equivalent" => (8.1871057769e-14, "J", 2.5e-23), "proton Compton wavelength over 2 pi" => (2.10308910109e-16, "m", 9.7e-26), "electron volt-hartree relationship" => (0.036749322175655, "E_h", 7.1e-14), "kilogram-hertz relationship" => (1.356392489e50, "Hz", 0.0), "proton mag. mom." => (1.41060679736e-26, "J T^-1", 6.0e-36), "atomic unit of magn. dipole moment" => (1.8548019e-23, "J T^-1", 1.6e-30), "electron-tau mass ratio" => (0.000287585, "", 1.9e-8), "neutron mass energy equivalent in MeV" => (939.56542052, "MeV", 5.4e-7), "shielding difference of d and p in HD" => (2.02e-8, "", 2.0e-11), "inverse meter-kilogram relationship" => (2.210219094e-42, "kg", 0.0), "molar volume of ideal gas (273.15 K, 100 kPa)" => (0.02271095464, "m^3 mol^-1", 0.0), "Wien frequency displacement law constant" => (5.878925757e10, "Hz K^-1", 0.0), "Boltzmann constant in Hz/K" => (2.083661912e10, "Hz K^-1", 0.0), "deuteron g factor" => (0.8574382338, "", 2.2e-9), "Bohr magneton in K/T" => (0.67171381563, "K T^-1", 2.0e-10), "conventional value of ohm-90" => (1.00000001779, "ohm", 0.0), "atomic unit of electric polarizablity" => (1.648777274e-41, "C^2 m^2 J^-1", 1.6e-49), "muon magn. moment" => (-4.49044799e-26, "J T^-1", 4.0e-33), "shielded helion gyromagn. ratio" => (2.037894569e8, "s^-1 T^-1", 2.4), "proton gyromag. ratio" => (2.6752218744e8, "s^-1 T^-1", 0.11), "proton mass energy equivalent in MeV" => (938.27208816, "MeV", 2.9e-7), "shielded helion gyromag. ratio in MHz/T" => (32.43409942, "MHz T^-1", 3.8e-7), "unified atomic mass unit" => (1.6605390666e-27, "kg", 5.0e-37), "triton relative atomic mass" => (3.01550071621, "", 1.2e-10), "neutron to shielded proton magn. moment ratio" => (-0.68499694, "", 1.6e-7), "helion-proton mass ratio" => (2.99315267167, "", 1.3e-10), "kilogram-inverse meter relationship" => (4.524438335e41, "m^-1", 0.0), "atomic mass unit-kilogram relationship" => (1.6605390666e-27, "kg", 5.0e-37), "Hartree energy in eV" => (27.211386245988, "eV", 5.3e-11), "molar Planck constant" => (3.990312712e-10, "J Hz^-1 mol^-1", 0.0), "conventional value of henry-90" => (1.00000001779, "H", 0.0), "tau molar mass" => (0.00190754, "kg mol^-1", 1.3e-7), "electron-deuteron mass ratio" => (0.0002724437107462, "", 9.6e-15), "neutron mag. mom. to Bohr magneton ratio" => (-0.00104187563, "", 2.5e-10), "electron-muon mass ratio" => (0.00483633169, "", 1.1e-10), "helion mag. mom." => (-1.074617532e-26, "J T^-1", 1.3e-34), "natural unit of mom.um" => (2.730924488e-22, "kg m s^-1", 3.4e-30), "electron volt-joule relationship" => (1.602176634e-19, "J", 0.0), "Planck constant over 2 pi" => (1.0545718e-34, "J s", 1.3e-42), "muon mag. mom." => (-4.4904483e-26, "J T^-1", 1.0e-33), "natural unit of length" => (3.8615926796e-13, "m", 1.2e-22), "natural unit of energy in MeV" => (0.51099895, "MeV", 1.5e-10), "shielded helion mag. mom." => (-1.07455309e-26, "J T^-1", 1.3e-34), "electron-muon magn. moment ratio" => (206.7669894, "", 5.4e-6), "neutron-proton mass difference in u" => (0.00138844933, "u", 4.9e-10), "atomic mass unit-hertz relationship" => (2.25234271871e23, "Hz", 6.8e13), "electron-proton magn. moment ratio" => (-658.2106862, "", 6.6e-6), "muon mass energy equivalent" => (1.692833804e-11, "J", 3.8e-19), "deuteron magn. moment" => (4.33073482e-27, "J T^-1", 3.8e-34), "neutron g factor" => (-3.82608545, "", 9.0e-7), "inverse fine-structure constant" => (137.035999084, "", 2.1e-8), "neutron-proton mass difference" => (2.30557435e-30, "kg", 8.2e-37), "atomic unit of electric quadrupole mom." => (4.4865515246e-40, "C m^2", 1.4e-49), "natural unit of time" => (1.28808866819e-21, "s", 3.9e-31), "reduced Planck constant times c in MeV fm" => (197.3269804, "MeV fm", 0.0), "Faraday constant" => (96485.33212, "C mol^-1", 0.0), "triton mass energy equivalent in MeV" => (2808.92113298, "MeV", 8.5e-7), "deuteron-neutron mag. mom. ratio" => (-0.44820653, "", 1.1e-7), "proton magn. moment to Bohr magneton ratio" => (0.001521032206, "", 1.5e-11), "deuteron relative atomic mass" => (2.013553212745, "", 4.0e-11), "atomic mass constant" => (1.6605390666e-27, "kg", 5.0e-37), "electron magn. moment" => (-9.28476412e-24, "J T^-1", 8.0e-31), "Angstrom star" => (1.00001495e-10, "m", 9.0e-17), "atomic mass constant energy equivalent in MeV" => (931.49410242, "MeV", 2.8e-7), "atomic unit of force" => (8.2387234983e-8, "N", 1.2e-17), "shielded helion magn. moment" => (-1.074553024e-26, "J T^-1", 9.3e-34), "molar volume of silicon" => (1.205883199e-5, "m^3 mol^-1", 6.0e-13), "natural unit of action" => (1.054571817e-34, "J s", 0.0), "triton mag. mom." => (1.5046095202e-26, "J T^-1", 3.0e-35), "inverse meter-kelvin relationship" => (0.01438776877, "K", 0.0), "electric constant" => (8.8541878128e-12, "F m^-1", 1.3e-21), "Wien displacement law constant" => (0.0028977685, "m K", 5.1e-9), "kelvin-inverse meter relationship" => (69.50348004, "m^-1", 0.0), "hertz-joule relationship" => (6.62607015e-34, "J", 0.0), "muon-neutron mass ratio" => (0.112454517, "", 2.5e-9), "proton charge to mass quotient" => (9.578833156e7, "C kg^-1", 0.029), "tau energy equivalent" => (1776.86, "MeV", 0.12), "helion mag. mom. to Bohr magneton ratio" => (-0.001158740958, "", 1.4e-11), "atomic unit of permittivity" => (1.11265005545e-10, "F m^-1", 1.7e-20), "electron mass in u" => (0.000548579909065, "u", 1.6e-14), "natural unit of momentum in MeV/c" => (0.5109989461, "MeV/c", 3.1e-9), "neutron-proton magn. moment ratio" => (-0.68497934, "", 1.6e-7), "deuteron magn. moment to Bohr magneton ratio" => (0.0004669754567, "", 5.0e-12))

const pi = 3.141592653589793

const pico = 1.0e-12

const point = 0.00035277777777777776

const pound = 0.45359236999999997

const pound_force = 4.4482216152605

const proton_mass = 1.67262192369e-27

const psi = 6894.757293168361

const pt = 0.00035277777777777776

const short_ton = 907.1847399999999

const sigma = 5.670374419e-8

const slinch = 175.12683524647636

const slug = 14.593902937206364

const speed_of_light = 2.99792458e8

const speed_of_sound = 340.5

const stone = 6.3502931799999995

const survey_foot = 0.3048006096012192

const survey_mile = 1609.3472186944373

const tebi = 1099511627776

const tera = 1.0e12

const ton_TNT = 4.184e9

const torr = 133.32236842105263

const troy_ounce = 0.031103476799999998

const troy_pound = 0.37324172159999996

const u = 1.6605390666e-27

const week = 604800.0

const yard = 0.9143999999999999

const year = 3.1536e7

const yobi = 1208925819614629174706176

const yocto = 1.0e-24

const yotta = 1.0e24

const zebi = 1180591620717411303424

const zepto = 1.0e-21

const zero_Celsius = 273.15

const zetta = 1.0e21

