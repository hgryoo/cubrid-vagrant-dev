yum update

yum install -y wget \
vim \
gdb gdb-gdbserver \
ctags

# configure astyle
if [ ! -d /home/vagrant/astyle-install]; then
	cd /home/vagrant
	mkdir astyle-install
	cd astyle-install
	wget https://jaist.dl.sourceforge.net/project/astyle/astyle/astyle%203.1/astyle_3.1_linux.tar.gz -O astyle.tar.gz
	tar -xzf astyle.tar.gz
	cd astyle
	cmake .
	make
	make install
fi

# configure pre-commit
mkdir -p /home/vagrant/.git/hooks
cd /home/vagrant/.git/hooks
wget https://github.com/hgryoo/cubrid-vagrant-dev/raw/master/shell/pre-commit
chmod +x pre-commit
chown vagrant pre-commit

# configure indent
mkdir -p /home/vagrant/bin
cd /home/vagrant/bin
wget https://github.com/hgryoo/cubrid-vagrant-dev/raw/master/shell/indent
chmod +x indent
chown vagrant indent
git config --global hooks.indent /home/vagrant/bin/indent