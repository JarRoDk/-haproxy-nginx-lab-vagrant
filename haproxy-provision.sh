apt-get -y update --fix-missing
apt-get -y install haproxy hatop netcat
cp /vagrant/haproxy-conf/haproxy-stable.cfg /etc/haproxy/haproxy.cfg
service haproxy restart
