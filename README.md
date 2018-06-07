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

```
vagrant up
vagrant ssh
build-sphinx
```

Then browse to http://localhost:8080/

When in the vagrant shell, jsonschema and flatten-tool are also available. You will find your working files in /vagrant.

To exit:

```
exit
vagrant halt
```
