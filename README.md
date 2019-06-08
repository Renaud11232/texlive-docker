# Texlive Docker

This repository is used to build unofficial docker images containing the whole `texlive-full` distro.

This may be useful if you need to build documents but don't want to install all `texlive` packages or if you want to build your documents in a CI environment like `gitlab-ci` or `travis`.

## Get the image

Getting the image is very simple as it's hosted on Docker Hub.

```bash
docker pull renaud11232/texlive
```

## Compile your document

This can vary depending on the toolchain you want to use. For the sake of the example, I'll use `xelatex` :

```bash
docker run --rm -v $PWD:/data renaud11232/texlive bash -c "xelatex doc && biber doc && xelatex doc && xelatex doc"
```
For docker based environment, such as `gitlab-ci`, this is not needed as you may be able to specify directly the commands to run in the container :

```yaml
compile_pdf:
  stage: build
  image: renaud11232/texlive
  script:
    - xelatex doc
    - biber doc
    - xelatex doc
    - xelatex doc
```
