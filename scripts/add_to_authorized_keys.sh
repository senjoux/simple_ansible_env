#!/bin/sh
# add key to authorized keys
cat /home/vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
# clean up
rm /home/vagrant/id_rsa.pub