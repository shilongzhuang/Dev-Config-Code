
### Prerequisite
yum install wget
yum install git
yum install nodejs
npm install bower -g


### Install Java

```sh
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.tar.gz
tar -zxvf jdk-8u141-linux-x64.tar.gz
mv jdk1.8.0_141/ /data/jdk
update-alternatives --install /usr/bin/java java /data/jdk/bin/java 2
update-alternatives --config java
update-alternatives --install /usr/bin/jar jar /data/jdk/bin/jar 2
update-alternatives --install /usr/bin/javac javac /data/jdk/bin/javac 2
update-alternatives --set jar /data/jdk/bin/jar
update-alternatives --set javac /data/jdk/bin/javac

cd /etc/profile.d
touch java.sh
vi java.sh
export JAVA_HOME=/data/jdk
export JRE_HOME=/data/jdk/jre
export PATH=$PATH:/data/jdk/bin:/data/jdk/jre/bin
source /etc/profile
```

cd /opt
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz
http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.tar.gz
tar -zxvf jdk-8u121-linux-x64.tar.gz
ln -s /opt/jdk1.8.0_121/ /opt/jdk
update-alternatives --install /usr/bin/java java /opt/jdk/bin/java 2
update-alternatives --config java
update-alternatives --install /usr/bin/jar jar /opt/jdk/bin/jar 2
update-alternatives --install /usr/bin/javac javac /opt/jdk/bin/javac 2
update-alternatives --set jar /opt/jdk/bin/jar
update-alternatives --set javac /opt/jdk/bin/javac

cd /etc/profile.d
touch java.sh
vi java.sh
export JAVA_HOME=/opt/jdk
export JRE_HOME=/opt/jdk/jre
export PATH=$PATH:/opt/jdk/bin:/opt/jdk/jre/bin
source /etc/profile
