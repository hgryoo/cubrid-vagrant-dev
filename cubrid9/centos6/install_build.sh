yum update

yum install -y gcc-c++ \
cmake \
libtool \
java-1.8.0-openjdk-devel \
texinfo \
elfutils-libelf-devel \
libgpg-error-devel \
ncurses-devel \
flex \
ant 

# install git 2.X for git clone from https (SSL)
yum install -y http://opensource.wandisco.com/centos/6/git/x86_64/wandisco-git-release-6-1.noarch.rpm
yum install -y git

echo 'export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk.x86_64' >> /home/vagrant/.bashrc
