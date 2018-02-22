Image based on ubuntu 17.10.

Installs oracle linux using [webupd8](https://medium.com/coderscorner/installing-oracle-java-8-in-ubuntu-16-10-845507b13343).
In addtion to that the unlimited strength encryption package is applied to.

To verify the encryption package is inplace and ready run this:
```bash
nb-syngeni350-2:uum_java8_jce vbe$> docker run -it uum_java8_jce /bin/bash
root@c6f6eacffd30:/# jrunscript -e 'print (javax.crypto.Cipher.getMaxAllowedKeyLength("RC5") >= 256);'
true
```
[Script taken from here](https://gist.github.com/evaryont/6786915)

Check should yield `true`.


