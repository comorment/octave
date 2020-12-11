FROM 'ubuntu:18.04'


#required tools
RUN apt-get update && apt-get install -y  --no-install-recommends apt-utils\
    python3 \
    tar \
    wget \
    unzip \
    git  \
  libgsl0-dev \
   perl \
    less \
    parallel \
    liboctave-dev \
    && \
    rm -rf /var/lib/apt/lists/*

RUN  apt-get install -y liboctave-dev
