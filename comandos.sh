# Puxando Stack ELK
docker pull sebp/elk

# Configurando SO para executar ELK
sudo sysctl -w vm.max_map_count=262144

# Executando stack ELK
# 5601 - Kibana
# 9200 - Elastic
# 5044 - Logstash
# 5045 - filebeat

docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -p 5045:5045 -it --rm \
    -v $(pwd)/tedbox.conf:/etc/logstash/conf.d/tedbox.conf \
    sebp/elk

# Metricbeat
docker run \
  --volume=/proc:/hostfs/proc:ro \
  --volume=/sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro \
  --volume=/:/hostfs:ro \
  --net=host \
  -v $(pwd)/metricbeat.yml:/usr/share/metricbeat/metricbeat.yml \
  docker.elastic.co/beats/metricbeat:6.3.1 -system.hostfs=/hostfs

echo "" > /tmp/tedbox.log

# Filebeat
docker run \
  -v $(pwd)/filebeat.yml:/usr/share/filebeat/filebeat.yml \
  --net=host \
  -v /tmp/tedbox.log:/tedbox.log \
  docker.elastic.co/beats/filebeat:6.3.1