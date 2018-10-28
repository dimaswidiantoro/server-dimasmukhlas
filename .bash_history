ls
cd dimasBlogYes
ls
sudo nano /etc/nginx/sites-available/dimasBlogYes
sudo ln -s /etc/nginx/sites-available/dimasBlogYes /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx
sudo ufw delete allow 8000
sudo ufw allow 'Nginx Full'
exit
sudo apt-get update
sudo apt-get install python-pip python-dev libpq-dev postgresql postgresql-contrib nginx
sudo apt-get install python3-pip python3-dev libpq-dev postgresql postgresql-contrib nginx
sudo -H pip install --upgrade pip
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
sudo dpkg-reconfigure locales
mkdir ~/dimasBlogYes
cd ~/dimasBlogYes
ls
virtualenv venv
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
virtualenv venv
source venv/bin/activate
pip install django==1.11.10 gunicorn psycopg2
django-admin.py startproject dimasBlogYes ~/dimasBlogYes
nano ~/dimasBlogYes/dimasBlogYes/settings.py
~/dimasBlogYes/manage.py makemigrations
~/dimasBlogYes/manage.py migrate
~/dimasBlogYes/manage.py createsuperuser
~/dimasBlogYes/manage.py collectstatic
sudo ufw allow 8000
~/dimasBlogYes/manage.py runserver 0.0.0.0:8000
cd ~/dimasBlogYes
gunicorn --bind 0.0.0.0:8000 dimasBlogYes.wsgi
deactivate
sudo nano /etc/systemd/system/gunicorn.service
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
sudo systemctl status gunicorn
git init
git commit -m "first commit"
git config --global user.email "tjitrodimedjo@gmail.com"
git config --global user.name "dimaswidiantoro"
git add -A
git commit -m "add semua"
git remote add origin https://github.com/dimaswidiantoro/server-dimasmukhlas.git
git push -u origin master
exit
ls
cd dimasBlogYes
ls
git status
git pull origin master
ls
source venv/bin/activate
python manage.py collectstatic
deactivate
sudo -u postgres psql
$ locale
locale-gen en_US en_US.UTF-8 
sudo locale-gen en_US en_US.UTF-8 
sudo dpkg-reconfigure locales
\du
sudo -u postgres psql
pip freeze
pip install pyscopg2
pip install pyscopg
pip install psycopg2
ls
source venv/bin/activate
pip freeze
ls
python manage.py makemigrations
"pip install psycopg2-binary

pip install psycopg2-binary
ls
python manage.py migrate
git add -A
ls
git status
git commit -m "install database"
git push origin master
gists
deactivate
exit
