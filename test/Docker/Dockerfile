#
# Dockerfile for SciPy.jl
#
# Build docker image
# >$ docker build -t asakai/scipyjl:v0.1.0 .
#
# Run Docker container
# >$ docker run -it --name scipyjl asakai/scipyjl:v0.1.0

FROM python:3.8
LABEL maintainer "AtsushiSakai <asakaig@gmail.com>"
RUN pip install scipy matplotlib
RUN apt-get update && apt-get install -y curl
RUN mkdir /julia
RUN curl -L https://julialang-s3.julialang.org/bin/linux/x64/1.4/julia-1.4.2-linux-x86_64.tar.gz | tar -C /julia --strip-components=1  -xzf -
ENV PATH "/julia/bin:$PATH"
COPY setup.jl /root
RUN julia /root/setup.jl
CMD julia
