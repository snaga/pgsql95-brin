if [ ! -f postgresql-9.5alpha1.tar.gz ]; then
  wget ftp://ftp.postgresql.org/pub/source/v9.5alpha1/postgresql-9.5alpha1.tar.gz
fi

tar zxf postgresql-9.5alpha1.tar.gz

cd postgresql-9.5alpha1
./configure --prefix=/usr/pgsql-9.5 --enable-debug
make -j 4

cd contrib
make -j 4
sudo make install

cd ..
sudo make install

curl -L http://dl.uptimeforce.com/postgres-toolkit/install.sh | sudo sh

