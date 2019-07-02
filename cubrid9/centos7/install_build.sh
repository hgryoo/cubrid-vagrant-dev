yum update

yum install -y git \
libtool \
java-1.8.0-openjdk-devel \
texinfo \
elfutils-libelf-devel \
libgpg-error-devel \
ncurses-devel \
flex \
ant 

wget -O /etc/yum.repos.d/slc6-devtoolset.repo http://linuxsoft.cern.ch/cern/devtoolset/slc6-devtoolset.repo

cd /home/vagrant

wget https://github.com/hgryoo/cubrid-vagrant-dev/raw/master/cubrid9/centos7/compat-libgmp-4.3.1-1.sl7.x86_64.rpm
wget https://github.com/hgryoo/cubrid-vagrant-dev/raw/master/cubrid9/centos7/compat-libmpfr-2.4.1-1.sl7.x86_64.rpm

yum localinstall -y --nogpgcheck \
compat-libgmp-4.3.1-1.sl7.x86_64.rpm compat-libmpfr-2.4.1-1.sl7.x86_64.rpm 

yum install -y centos-release-scl
yum install -y devtoolset-1.1-gcc-c++ --nogpgcheck

cd /home/vagrant
mkdir -p bin
chown -R vagrant /home/vagrant/bin
echo 'export PATH=/home/vagrant/bin:$PATH' >> /home/vagrant/.bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk' >> /home/vagrant/.bashrc
echo 'source scl_source enable devtoolset-1.1' >> /home/vagrant/.bash_profile
