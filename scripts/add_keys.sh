# add keys
cat /home/vagrant/id_rsa > /home/vagrant/.ssh/id_rsa
cat /home/vagrant/id_rsa.pub > /home/vagrant/.ssh/id_rsa.pub
# clean up
rm /home/vagrant/id_rsa.pub
rm /home/vagrant/id_rsa