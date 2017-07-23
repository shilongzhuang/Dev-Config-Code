# Jupyter

## Install IRkernel
conda install -c r ipython-notebook r-irkernel
conda install -c r r-essentials
conda install -c r r-devtools
install.packages("RSiteCatalyst",repos='http://cran.us.r-project.org')

## start jupyter

conda upgrade ipython
#pip install ipython --upgrade
conda upgrade notebook

jupyter notebook --generate-config
Writing default config to: C:\Users\shilongz\.jupyter\jupyter_notebook_config.py

jupyter notebook password
pssword:xxxx

```python
from notebook.auth import passwd
passwd()
```

c.NotebookApp.open_browser = False
c.NotebookApp.ip = '0.0.0.0'
change c.NotebookApp.iopub_data_rate_limit = 1000000000
c.NotebookApp.notebook_dir = '/data/jupyter'


conda install rpy2

find /data/anaconda2 -type d -exec chmod 777 {} \;
chmod 777 /data/anaconda2/lib/R/library

```sh
#!/bin/bash
ps -ef | grep jupyter | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 10
cd /data/jupyter
sleep 1
nohup jupyter notebook > /dev/null 2>&1 &
```

# Install Anaconda
curl -O https://repo.continuum.io/archive/Anaconda2-4.3.1-Linux-x86_64.sh
bash Anaconda2-4.3.1-Linux-x86_64.sh
export PATH=/data/anaconda2/bin:$PATH
source /etc/profile
rm -rf /data/anaconda2

# Python Packages install

## InfluxDB
pip install influxdb
pip install --upgrade influxdb
pip uninstall influxdb

# BS4
pip install beautifulsoup4

## Omniture python package
pip install git+http://github.com/dancingcactus/python-omniture.git
pip install https://github.com/dancingcactus/python-omniture/zipball/master

# Flask-ask
pip install flask-ask

# Data Visulization
pip install plotly

https://github.com/santosjorge/cufflinks
pip install cufflinks

# Oracle
conda install cx_Oracle
