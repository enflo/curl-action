# GITHUB CURL ACTION

[![Travis][travis-image]][travis-url]
![License][license-image]
![Issues][issues-image]

## USAGE

### Docker

"""
docker run enflo/curl-action {{ OPTION }} {{ URL }}
"""

### GitHub Actions

"""
name: CURL CLI ACTION
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: curl
      uses: enflo/curl-action@master
      with:
        args: {{ OPTION }} {{ URL }}
"""

[travis-image]: https://travis-ci.com/enflo/curla-action.svg?branch=master
[travis-url]: https://travis-ci.com/enflo/curla-action
[license-image]: https://img.shields.io/static/v1?label=licence&message=MIT&color=Green
[issues-image]: https://img.shields.io/github/issues/enflo/curl-action