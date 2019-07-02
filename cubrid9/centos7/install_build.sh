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

# installing dependencies for devtoolset-2
wget https://github.com/hgryoo/cubrid-vagrant-dev/raw/master/cubrid9/centos7/compat-libgmp-4.3.1-1.sl7.x86_64.rpm
wget https://github.com/hgryoo/cubrid-vagrant-dev/raw/master/cubrid9/centos7/compat-libmpfr-2.4.1-1.sl7.x86_64.rpm

yum localinstall -y --nogpgcheck \
compat-libgmp-4.3.1-1.sl7.x86_64.rpm compat-libmpfr-2.4.1-1.sl7.x86_64.rpm 

yum --enablerepo=extras install -y centos-release-scl
yum install -y devtoolset-2-gcc* devtoolset-2-binutils --nogpgcheck
yum install -y gcc-c++ boost-devel

cd /home/vagrant
mkdir -p bin
chown -R vagrant /home/vagrant/bin
echo 'export PATH=/home/vagrant/bin:$PATH' >> /home/vagrant/.bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/java/' >> /home/vagrant/.bashrc
echo 'source scl_source enable devtoolset-2' >> /home/vagrant/.bash_profile