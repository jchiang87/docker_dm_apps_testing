#!/bin/bash
source /opt/lsst/software/stack/loadLSST.bash
setup lsst_distrib
pip install nose
eups declare apps_test -r /home/vagrant/apps_test -t current
setup apps_test
cd /home/vagrant/apps_test
nosetests
