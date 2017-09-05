### Java Tools Environment with Vagrant + Puppet + Bash Provisioning

This is a quite simple example to show how to create a virtual java environment with Vagrant, Puppet and Bash provisioning.

I set bash provisioning(tools/create_puppet_modules_guest.sh) to configure and install some puppet modules on guest(puppetlabs-apt, puppet-tylerwalts,archive-jdk_oracle, aco-tomcat). This is necesary to install Tomcat and Java afterwards. 

I set puppet provisioning(/puppet/manifests/sample.pp) to install Oracle JDK 8 and Tomcat.

```{r, engine='bash', code_block_name} ...
git clone https://github.com/colo76/vagrant-java-tools.git
cd vagrant-java-tools
vagrant up
vagrant ssh 
```
