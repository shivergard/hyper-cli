if [ ! -f ./hyper ]; then
    wget https://hyper-install.s3.amazonaws.com/hyper-linux-x86_64.tar.gz
	tar xzf hyper-linux-x86_64.tar.gz
	./hyper --help
fi

sudo docker build . -t shivergard/hyper-cli
sudo docker push shivergard/hyper-cli