#!/bin/bash
source /opt/lsst/software/stack/loadLSST.bash
setup lsst_distrib
pip install nose
pip install coveralls
eups declare apps_test -r /home/travis/apps_test -t current
setup apps_test
cd /home/travis/apps_test
ls -l
nosetests -s --with-coverage --cover-package=desc.apps_test
