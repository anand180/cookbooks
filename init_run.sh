# for amazon aws!
# curl -L https://www.opscode.com/chef/install.sh | sudo bash

# get superuser access
sudo su
# update system defaults and install dev tools
yum update
yum groupinstall "Development Tools"
# get ruby version manager
\curl -L https://get.rvm.io | bash -s stable
# source rvm
source /etc/profile.d/rvm.sh
# zlib-devel package is required for rvm's openssl
yum install zlib-devel
rvm pkg install openssl
# finally install ruby 2
rvm install 1.9.3 --with-openssl-dir=/usr/local/rvm/usr
rvm install 2.0.0 --with-openssl-dir=/usr/local/rvm/usr
