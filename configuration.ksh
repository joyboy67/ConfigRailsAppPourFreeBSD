sudo pkg upgrade && sudo pkg update

#Installation Node(15) + yarn
sudo pkg install node-15 #node-devel
sudo pkg install yarn # -> 5Mb

#Installation Postgresql(13) + initialisation
sudo pkg install postgresql11-server postgresql11-client # -> 1Go
sudo sysrc postgresql_enable=yes
sudo /usr/local/etc/rc.d/postgresql initdb
sudo service postgresql start
#sudo service postgresql status

#Installation Bash + RVM->Ruby(3) + Rails(6)
# a) -----
sudo pkg install bash # -> 1Mb
echo fdesc /dev/fd     fdescfs     rw  0   0 >> /etc/fstab # || ee /etc/fstab
sudo mount -a
sudo chsh -s bash
bash
# b) -----
# sudo pkg install curl
curl -sSL https://get.rvm.io -o installer.sh
bash installer.sh stable
. ~/.rvm/scripts/rvm
rvm install 3.0 # -> 100Mb
# c) -----
gem install rails --no-document

#Installation Ngninx + Passenger
sudo pkg install nginx
sudo sysrc nginx_enable=yes
sudo service nginx start

#Creation BDD


#pkg install/search

#before
 #visudo /usr/local/etc/sudoers
 #username =(ALL) ALL
