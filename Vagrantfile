Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.define "pg_master" do |pg_master|
      pg_master.vm.network "private_network", ip: "192.168.33.1", virtualbox__intnet: "private1"
  end

  config.vm.define "pg_slave" do |pg_slave|
      pg_slave.vm.network "private_network", ip: "192.168.33.2", virtualbox__intnet: "private1"
  end

end
