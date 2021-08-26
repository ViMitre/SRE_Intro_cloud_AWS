Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.network "private_network", ip: "192.168.10.100"
    # Dir syncing       path on host
    config.vm.synced_folder "app", "/home/vagrant/app" #  path to destination
    config.vm.provision "shell", path: "provision.sh"
end