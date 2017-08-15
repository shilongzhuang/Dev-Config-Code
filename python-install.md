### Install Anaconda
```sh
rm -rf /data/anaconda2
wget https://repo.continuum.io/archive/Anaconda2-4.4.0-Linux-x86_64.sh
bash Anaconda2-4.4.0-Linux-x86_64.sh
export PATH=/data/anaconda2/bin:$PATH
source /etc/profile
```

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


### Install PySpark

```sh
conda create -n tensorflow python=3.5
source activate tensorflow
conda install notebook ipykernel
ipython kernel install --user --name=python3
```

```sh
wget https://downloads.lightbend.com/scala/2.12.3/scala-2.12.3.rpm
yum install scala-2.12.3.rpm
scala -version
```

```sh
pip install py4j
```

```sh
wget https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz
tar -zvxf spark-2.2.0-bin-hadoop2.7.tgz
mv spark-2.2.0-bin-hadoop2.7 /data/spark
```

```sh
/etc/profile.d/
touch spark.sh
vi spark.sh
export SPARK_HOME=/data/spark
export PATH=$SPARK_HOME:$PATH
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS=notebook
export PYSPARK_PYTHON=python3
source /etc/prfoile
```

```sh
pip install findspark
```


## Install IRkernel

```sh
conda install rpy2
conda install -c r ipython-notebook r-irkernel
conda install -c r r-essentials
conda install -c r r-devtools
install.packages("RSiteCatalyst",repos='http://cran.us.r-project.org')
```


### Python Packages install

#### InfluxDB
pip install influxdb
pip install --upgrade influxdb
pip uninstall influxdb

#### BS4
pip install beautifulsoup4

### Omniture python package
pip install git+http://github.com/dancingcactus/python-omniture.git
pip install https://github.com/dancingcactus/python-omniture/zipball/master

#### Flask-ask
pip install flask-ask

#### Data Visulization
pip install matplotlib
pip install plotly

https://github.com/santosjorge/cufflinks
pip install cufflinks

# Oracle
conda install cx_Oracle

# Tensorflow
