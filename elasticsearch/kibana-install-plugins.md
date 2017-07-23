### 1.Computed Columns
https://github.com/seadiaz/computed-columns
wget https://github.com/seadiaz/computed-columns/releases/download/0.6.0/computed-columns-0.6.0-5.4.3.zip  
https://github.com/seadiaz/computed-columns/releases/download/0.7.0/computed-columns-0.7.0-5.5.5.zip

#2 Kibana Time Plugin
git clone https://github.com/nreese/kibana-time-plugin.git  https://github.com/nreese/kibana-time-plugin
git checkout 5.5
bower install --allow-root

#3 Kibana Search Table
git clone https://github.com/dlumbrer/kbn_searchtables  https://github.com/dlumbrer/kbn_searchtables
https://github.com/dlumbrer/kbn_searchtables/releases/download/5.5.X/kbn_searchtables.tar.gz

#4 Kibana Percent
get https://github.com/outbrain/ob-kb-percent/archive/v5.1.1.1.tar.gz  https://github.com/outbrain/ob-kb-percent

#5 Kibana Metric Percent
https://github.com/amannocci/kibana-plugin-metric-percent
wget https://github.com/amannocci/kibana-plugin-metric-percent/archive/5.5.0.tar.gz  
mv kibana-plugin-metric-percent-5.5.0/ metric_percent_vis

#6 Kibana Radar Chart
wget https://github.com/sirensolutions/kibi_radar_vis/releases/download/5.4.0-1/kibi_radar_vis-5.4.0-1.zip https://github.com/sirensolutions/kibi_radar_vis

#7 Kibana Sankey
git clone https://github.com/chenryn/kbn_sankey_vis.git https://github.com/chenryn/kbn_sankey_vis
npm install babel-preset-es2015
npm install babel-preset-stage-2
cd kbn_sankey_vis/
git checkout kibana5
npm install
npm run build

#8 Extended Metric https://github.com/ommsolutions/kibana_ext_metrics_vis
wget https://github.com/ommsolutions/kibana_ext_metrics_vis/releases/download/0.1.0/extended_metric_vis.zip  

#9 Kibana Funnel Chart
wget https://github.com/outbrain/ob-kb-funnel/releases/download/v5.2.2/ob-kb-funnel-5.2.2.zip https://github.com/outbrain/ob-kb-funnel
git clone https://github.com/outbrain/ob-kb-funnel.git
cd ob-kb-funnel/
git checkout support_kibana_5
npm install

#10 Cohort
wget https://github.com/elo7/cohort/releases/download/5.4.3/cohort-5.4.3.zip https://github.com/elo7/cohort

#11 Kibana Circle Chart
https://github.com/JuanCarniglia/kbn_circles_vis
git clone https://github.com/JuanCarniglia/kbn_circles_vis.git
cd kbn_circles_vis
npm install
npm install --save-dev babel-core
npm install gulpjs/gulp#4.0
npm install -g module
npm install --global gulp
npm run build

#12 C3JS Chart
it clone https://github.com/mstoyano/kbn_c3js_vis.git c3_charts
$ cd c3_charts
$ npm install
https://github.com/mstoyano/kbn_c3js_vis
