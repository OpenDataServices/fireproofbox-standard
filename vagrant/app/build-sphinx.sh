#!/bin/bash

set -e

export PYTHONPATH=$PYTHONPATH:/vagrant/

sphinx-build  -a /vagrant/docs   /out/

