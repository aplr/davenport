# Davenport

<p align="center">
    <img alt="Docker Cloud Automated build" src="https://img.shields.io/docker/cloud/automated/aplr/davenport">
    <img alt="Docker Cloud Build Status" src="https://img.shields.io/docker/cloud/build/aplr/davenport">
    <img alt="Docker Image Size" src="https://img.shields.io/docker/image-size/aplr/davenport">
    <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/aplr/davenport">
    <img alt="Docker Image Version (latest semver)" src="https://img.shields.io/docker/v/aplr/davenport">
</p>

This docker image is made for writers of the digital age. Based on `ubuntu:rolling`, it contains the full texlive distribution, allowing you to compile your LaTeX files on the fly. In addition, the following packages are included:

### LaTeX

This image comes with `texlive` and `texlive-latex-extra` installed, alongside with `latexmk` and `biber`. If you need more languages, feel free to build upon this image or install it on your CI. And if you are a software guy you are lucky, as `minted` is already included.

### Pandoc

If you want to write Markdown but still embed this into a LaTeX document or just output it as a PDF, `pandoc` is your friend. If you have some filters written in python, `python3` and the `pandocfilters` package are already included.

### Make

Lots of people love Makefiles, and so do we. Therefore, make is shipped with this image per default.

### Git

When using this image in your CI, you have git installed per default.
