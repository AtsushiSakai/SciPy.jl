"""
scipy.stats module

- [Statistical functions (scipy.stats) Reference Guide](https://docs.scipy.org/doc/scipy/reference/stats.html)


# Examples

You can calculate Pearson correlation coefficient and p-value:

```julia-repl
julia> a = [0, 0, 0, 1, 1, 1, 1];

julia> b = collect(0:6);

julia> SciPy.stats.pearsonr(a, b)
(0.8660254037844386, 0.011724811003954649)
```
"""
module stats

using PyCall
import PyCall: hasproperty # Base.hasproperty in Julia 1.2

import ..pystats
import .._generate_docstring
import ..LazyHelp

const _ignore_funcs = ["stats", "describe"]

@doc LazyHelp(pystats, "describe") function describe(args...; kws...) 
   desc = pycall(pystats.describe, PyAny, args...; kws...)
   return (nobs=desc[1], minmax=desc[2], mean=desc[3], variance=desc[4], skewness=desc[5], kurtosis=desc[6])
end

all_property = ["F_onewayBadInputSizesWarning", "F_onewayConstantInputWarning", "PearsonRConstantInputWarning", "PearsonRNearConstantInputWarning", "SpearmanRConstantInputWarning", "alpha", "anderson", "anderson_ksamp", "anglit", "ansari", "arcsine", "argus", "bartlett", "bayes_mvs", "bernoulli", "beta", "betabinom", "betaprime", "binned_statistic", "binned_statistic_2d", "binned_statistic_dd", "binom", "binom_test", "boltzmann", "boxcox", "boxcox_llf", "boxcox_normmax", "boxcox_normplot", "bradford", "brunnermunzel", "burr", "burr12", "cauchy", "chi", "chi2", "chi2_contingency", "chisquare", "circmean", "circstd", "circvar", "combine_pvalues", "contingency", "cosine", "cramervonmises", "crystalball", "cumfreq", "describe", "dgamma", "dirichlet", "distributions", "dlaplace", "dweibull", "energy_distance", "entropy", "epps_singleton_2samp", "erlang", "expon", "exponnorm", "exponpow", "exponweib", "f", "f_oneway", "fatiguelife", "find_repeats", "fisher_exact", "fisk", "fligner", "foldcauchy", "foldnorm", "friedmanchisquare", "gamma", "gausshyper", "gaussian_kde", "genexpon", "genextreme", "gengamma", "genhalflogistic", "geninvgauss", "genlogistic", "gennorm", "genpareto", "geom", "gilbrat", "gmean", "gompertz", "gstd", "gumbel_l", "gumbel_r", "halfcauchy", "halfgennorm", "halflogistic", "halfnorm", "hmean", "hypergeom", "hypsecant", "invgamma", "invgauss", "invweibull", "invwishart", "iqr", "itemfreq", "jarque_bera", "johnsonsb", "johnsonsu", "kappa3", "kappa4", "kde", "kendalltau", "kruskal", "ks_1samp", "ks_2samp", "ksone", "kstat", "kstatvar", "kstest", "kstwo", "kstwobign", "kurtosis", "kurtosistest", "laplace", "laplace_asymmetric", "levene", "levy", "levy_l", "levy_stable", "linregress", "loggamma", "logistic", "loglaplace", "lognorm", "logser", "loguniform", "lomax", "mannwhitneyu", "matrix_normal", "maxwell", "median_abs_deviation", "median_absolute_deviation", "median_test", "mielke", "mode", "moment", "mood", "morestats", "moyal", "mstats", "mstats_basic", "mstats_extras", "multinomial", "multiscale_graphcorr", "multivariate_hypergeom", "multivariate_normal", "multivariate_t", "mvn", "mvsdist", "nakagami", "nbinom", "ncf", "nct", "ncx2", "nhypergeom", "norm", "normaltest", "norminvgauss", "obrientransform", "ortho_group", "pareto", "pearson3", "pearsonr", "percentileofscore", "planck", "pointbiserialr", "poisson", "power_divergence", "powerlaw", "powerlognorm", "powernorm", "ppcc_max", "ppcc_plot", "probplot", "randint", "random_correlation", "rankdata", "ranksums", "rayleigh", "rdist", "recipinvgauss", "reciprocal", "relfreq", "rice", "rv_continuous", "rv_discrete", "rv_histogram", "rvs_ratio_uniforms", "scoreatpercentile", "sem", "semicircular", "shapiro", "siegelslopes", "sigmaclip", "skellam", "skew", "skewnorm", "skewtest", "spearmanr", "special_ortho_group", "statlib", "stats", "t", "theilslopes", "tiecorrect", "tmax", "tmean", "tmin", "trapezoid", "trapz", "triang", "trim1", "trim_mean", "trimboth", "truncexpon", "truncnorm", "tsem", "tstd", "ttest_1samp", "ttest_ind", "ttest_ind_from_stats", "ttest_rel", "tukeylambda", "tvar", "uniform", "unitary_group", "variation", "vonmises", "vonmises_line", "wald", "wasserstein_distance", "weibull_max", "weibull_min", "weightedtau", "wilcoxon", "wishart", "wrapcauchy", "yeojohnson", "yeojohnson_llf", "yeojohnson_normmax", "yeojohnson_normplot", "yulesimon", "zipf", "zmap", "zscore"]

for f in all_property
    f in _ignore_funcs && continue

    sf = Symbol(f)
    @eval @doc LazyHelp(pystats, $f) $sf(args...; kws...) = pycall(pystats.$f, PyAny, args...; kws...)
end

function __init__()
    copy!(pystats, pyimport_conda("scipy.stats", "scipy"))
end

end # module
