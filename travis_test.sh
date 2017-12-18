#!/bin/bash
source /opt/lsst/software/stack/loadLSST.bash
setup lsst_distrib
eups declare -r . apps_test -t current
setup apps_test
nosetests
