sudo apt update
sudo apt upgrade -y
sudo apt-get install python-pip python3-pip -y
sudo apt-get install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev libhdf5-dev -y


wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz
tar xf Python-3.8.2.tgz
cd Python-3.8.2
./configure
make -j 4
sudo make altinstall

wget https://github.com/Kitware/CMake/releases/download/v3.18.3/cmake-3.18.3.tar.gz
tar xvzf cmake-3.18.3.tar.gz
cd cmake-3.18.3
./bootstrap
make
sudo make install

pip install wheel

cd
sudo apt-get install libffi-dev git libatlas-base-dev python3-venv cython -y

sudo git clone https://github.com/freqtrade/freqtrade.git
cd freqtrade
sudo ./setup.sh --install
