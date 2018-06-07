# fireproofbox-standard

The standard for keeping track of things in the fireproof box.

## With Docker

```
docker build -t ods/fireproofbox .
docker run -ti -v /path/to/fireproofbox-standard/:/app ods/fireproofbox
```

### Build docs

To build the Sphinx docs in the Docker container:

```
cd docs/
make html
```

Static files are in `_build` directory.

## With Vagrant

TODO: james