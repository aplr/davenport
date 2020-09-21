FROM ubuntu:rolling

RUN export DEBIAN_FRONTEND="noninteractive" && \
    apt-get update && \
    apt-get install -y texlive texlive-latex-extra make latexmk biber python3 python3-pip pandoc git && \
    pip3 install Pygments pandocfilters && \
    apt-get remove -y python3-pip && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/sh" ]