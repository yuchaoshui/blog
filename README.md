# Introduction
just a blog. but beautiful.


# Installation
take a look at the manage.py file, and you will know all.
you can use your own way to run it, such as supervisro, uwsgi, gunicorn.
```
git clone https://github.com/yuchaoshui/blog
cd blog
pip install -r requirements.txt
blog --help
```


# generate rsa private key and public key
```
openssl genrsa -out auth.pem 512
openssl rsa -in auth.pem -pubout -out auth.pub
```
or there is another way to generate
```
openssl genpkey -out auth.pem -algorithm rsa -pkeyopt rsa_keygen_bits:512
openssl rsa -in auth.pem -out auth.pub -pubout
```
then overwrite two files in settings directory.


# development
copy settings/default_settings.py to project root directory, rename it to .settings.py,
and you can overwrite default settings.

`make dist` to make a package,
`honcho start` to start server locally.
`make compile-deps` to generate requirements.txt use requirements.in
more details please read the Makefile.
