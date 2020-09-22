FROM ubuntu:rolling

# Install base dependencies
RUN export DEBIAN_FRONTEND="noninteractive" && \
    apt-get update && \
    apt-get install -y texlive texlive-latex-extra make latexmk biber pandoc git && \
    rm -rf /var/lib/apt/lists/*

# Install python
RUN apt-get update && \
    apt-get install -y python wget && \
    wget -O get-pip.py https://bootstrap.pypa.io/get-pip.py && \
    python2 get-pip.py && \
    pip install Pygments pandocfilters && \
    pip uninstall -y pip setuptools && \
    apt-get remove -y wget && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/sh" ]