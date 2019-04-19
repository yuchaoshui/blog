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


# generate your key
```
openssl genrsa -out auth.pem 512
openssl rsa -in rsa_private_key -pubout -out auth.pub
```
or
```
openssl genpkey -out auth.pem -algorithm rsa -pkeyopt rsa_keygen_bits:512
openssl rsa -in auth.pem -out auth.pub -pubout
```
then overwrite two files in config directory.


# development
copy config/default_config.py to root directory, rename it to .config.py,
and you can overwrite default settings.

`make dist` to make a package, `honcho start` to start server locally.
`make compile-deps` to generate requirements.txt use requirements.in
