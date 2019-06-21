yum update

yum install -y git \
cmake \
gcc-c++ \
java-1.8.0-openjdk-devel \
systemtap \
systemtap-sdt-devel \
bison \
flex \
libtool \
ncurses-devel \
ant \
elfutils-libelf-devel \
rpm-build

# to build c++11
yum --enablerepo=extras install -y centos-release-scl
yum install -y devtoolset-8-gcc* epel-release
yum install -y cmake3

cd /home/vagrant
mkdir -p bin
ln -sf /usr/bin/cmake3 /home/vagrant/bin/cmake
chown -R vagrant /home/vagrant/bin
echo 'export PATH=/home/vagrant/bin:$PATH' >> /home/vagrant/.bashrc
echo 'source scl_source enable devtoolset-8' >> /home/vagrant/.bash_profile