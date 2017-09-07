FROM container-registry.phenomenal-h2020.eu/phnmnl/jupyter:v387f29b6ca83_cv0.4.7

MAINTAINER pmoreno@ebi

RUN conda install -c bioconda r-vegan && \
    #apt-get update -y && apt-get install -y --no-install-recommends r-base-dev && \
    conda install -c bioconda r-klar && \
    conda install -c bioconda r-mixOmics && \
    conda install -c conda-forge xvfbwrapper && \    
    #apt-get purge -y git r-base-dev && \
    apt-get clean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*
