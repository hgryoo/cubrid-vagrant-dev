cd /home/vagrant

if [ ! -d cubrid ]; then
	# git clone --recurse-submodules https://github.com/cubrid/cubrid.git cubrid
	git clone https://github.com/cubrid/cubrid.git cubrid
    cd cubrid
    git submodule init
    git submodule update
    cd .. 
	chown -R vagrant cubrid
fi
  
if [ ! -d myenv ]; then
	git clone https://github.com/hgryoo/MyCentOSEnv myenv
	chown -R vagrant myenv
fi
