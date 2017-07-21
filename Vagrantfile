Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"    

  
  puppet_environment = "puppet"  
  puppet_environment_path_on_guest="/etc/puppetlabs/code/environments/#{puppet_environment}"
  module_path_on_guest="#{puppet_environment_path_on_guest}/modules"

  config.vm.network :private_network, ip: "192.168.33.101" 

  config.vm.provision :shell, path: "tools/create_puppet_modules_guest.sh"

  config.vm.provision :puppet do |puppet|
   
    puppet.options=['--verbose']    
    puppet.environment="puppet"
    puppet.environment_path="./"
    puppet.manifests_path="puppet/manifests"
    puppet.manifest_file="sample.pp"
    puppet.facter={
  	project_name: "Sample project..",        
     }
  end


end

