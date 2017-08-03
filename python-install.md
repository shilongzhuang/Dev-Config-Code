### Jupyter Installation

```sh
conda upgrade ipython
conda upgrade notebook
```

```sh
jupyter notebook --generate-config --allow-root
Writing default config to: /root/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> /root/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> /root/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.iopub_data_rate_limit = 1000000000" >> /root/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.notebook_dir = '/data/jupyter'" >> /root/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.password_required = True" >> /root/.jupyter/jupyter_notebook_config.py
```

```sh
python -m notebook.auth password
nohup jupyter notebook --allow-root > /dev/null 2>&1 &
```

```sh
#!/bin/bash
ps -ef | grep jupyter | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 10
cd /data/jupyter
sleep 1
nohup jupyter notebook > /dev/null 2>&1 &
```


## Install IRkernel

```sh
conda install rpy2
conda install -c r ipython-notebook r-irkernel
conda install -c r r-essentials
conda install -c r r-devtools
install.packages("RSiteCatalyst",repos='http://cran.us.r-project.org')
```

### Install Anaconda
```sh
rm -rf /data/anaconda2
wget https://repo.continuum.io/archive/Anaconda2-4.4.0-Linux-x86_64.sh
bash Anaconda2-4.4.0-Linux-x86_64.sh
export PATH=/data/anaconda2/bin:$PATH
source /etc/profile
```

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
