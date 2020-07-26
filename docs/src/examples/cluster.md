# scipy.cluster

scipy.cluster module

- [Clustering package (scipy.cluster) Reference Guide](https://docs.scipy.org/doc/scipy/reference/cluster.html)


## vq.kmeans

- [scipy\.cluster\.vq\.kmeans Reference Guide](http://scipy.github.io/devdocs/generated/scipy.cluster.vq.kmeans.html#scipy.cluster.vq.kmeans)

```@example
using SciPy # hide
using PyPlot # hide
using Distributions # hide
close("all") # hide
n_points = 50
points1=[rand(Normal(0.0, 0.2), n_points) rand(Normal(0.0, 1.0), n_points)]
points2=[rand(Normal(3.0, 0.5), n_points) rand(Normal(2.0, 0.5), n_points)]
points=[points1; points2]
whitened = cluster.vq.whiten(points)
codebook, distortion = cluster.vq.kmeans(whitened, 2)
plot(whitened[:, 1], whitened[:, 2], ".k")
plot(codebook[:, 1], codebook[:, 2], "or")
axis("equal")
savefig("cluster_vq_kmeans.png") # hide
```

![](cluster_vq_kmeans.png)


