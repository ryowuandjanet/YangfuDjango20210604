Install wkhtmltopdf on Ubuntu 22.04
=======================================
sudo apt update
sudo apt install wget
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb
sudo apt install -f ./wkhtmltox_0.12.6.1-2.jammy_amd64.deb

測試
$ wkhtmltopdf --version
wkhtmltopdf 0.12.6 (with patched qt)

$ wkhtmltoimage --version
wkhtmltoimage 0.12.6 (with patched qt)

pip install django-widget-tweaks
pip install django-crispy-forms
pip install django-import-export
pip install django-wkhtmltopdf
pip install numpy
pip install django-xhtml2pdf
pip install django-pdfkit
pip install dj-static