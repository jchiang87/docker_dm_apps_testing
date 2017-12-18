#!/bin/bash
source /opt/lsst/software/stack/loadLSST.bash
setup lsst_distrib
pip install nose
pip install coveralls
eups declare apps_test -r /home/vagrant/apps_test -t current
setup apps_test
cd /home/vagrant
groups vagrant
id vagrant
ls -l
cd /home/vagrant/apps_test
ls -l
nosetests -s --with-coverage
coveralls
