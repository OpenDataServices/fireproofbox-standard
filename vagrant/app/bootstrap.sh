
set -e

apt-get update
apt-get install -y python3 python3-pip apache2


pip3 install jsonschema
cd /vagrant && pip3 install -e git+https://github.com/OpenDataServices/flatten-tool.git@7fa96933b8fc3ba07a3d44fe07dccf2791165686#egg=flattentool

mkdir /out
chown -R vagrant:users /out

cp /vagrant/vagrant/app/apache.conf /etc/apache2/sites-enabled/000-default.conf
/etc/init.d/apache2 restart

echo "alias build-sphinx='/vagrant/vagrant/app/build-sphinx.sh'" >> /home/vagrant/.bashrc

cd /vagrant/ && pip3 install -r requirements.txt
