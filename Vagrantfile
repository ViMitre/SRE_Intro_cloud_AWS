Vagrant.configure("2") do |config|    
    config.vm.define "app" do |app|
        app.vm.box = "ubuntu/xenial64"
        app.vm.network "private_network", ip: "192.168.10.100"
        app.vm.synced_folder "app", "/home/vagrant/app"
        app.vm.provision "shell", path: "provision_app.sh"
    end
    config.vm.define "db" do |db|
        db.vm.box = "ubuntu/xenial64"
        db.vm.network "private_network", ip: "192.168.10.150"
        db.vm.provision "shell", path: "provision_db.sh"
    end
end