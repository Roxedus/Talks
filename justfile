#!/usr/bin/env -S just --justfile

run_port := "1948"
run_image := "webpronl/reveal-md"
run_ver := "latest"

_image := run_image + ":" + run_ver
_base := "docker run --rm -v " + invocation_directory() + "/|path|/:/slides "
_cmd := _base + _image
_serve := _base + "-p 35729:35729 -p " + run_port + ":1948 " + _image

default:
  just --list

static path:
  {{replace(_base,"|path|", path)}} --user $(id -u):$(id -g) {{_image}} /slides/index.md --css custom.css --static _site --static-dirs=assets

dev path *args:
  {{replace(_serve,"|path|", path)}} /slides --watch --css custom.css