Vagrant.configure("2") do |config|

  config.vm.define "nginx" do |nginx|
    nginx.vm.box = "ubuntu/trusty64"
    nginx.vm.provision "shell", path: "nginx-provision.sh"
    nginx.vm.network "forwarded_port", guest: 80, host: 8080, id: "ngingx"
    nginx.vm.network :private_network, ip: "192.168.10.50"
    nginx.vm.network :private_network, ip: "192.168.10.2"
  end

  config.vm.define "haproxy" do |haproxy|
    haproxy.vm.box = 'ubuntu/bionic64'
    haproxy.vm.hostname = "haproxy"
    haproxy.vm.provision "shell", path: "haproxy-provision.sh"
    haproxy.vm.network :private_network, ip: "192.168.10.10"
    haproxy.vm.network "forwarded_port", guest: 80, host: 3000
    haproxy.vm.network "forwarded_port", guest: 8404, host: 8404
  end
end

# www
#  https://www.haproxy.com/blog/dynamic-configuration-haproxy-runtime-api/
#  https://www.datadoghq.com/blog/how-to-collect-haproxy-metrics/
#  https://www.haproxy.com/blog/hitless-reloads-with-haproxy-howto/

# haproxy
#  commands 
#   hatop -s /run/haproxy/admin.sock
