# EXEMPLOS - Tedbox Express - CataLOGando Conhecimento

Neste respositório possui exemplos de como indexar logs na Plataforma ELK (Elasticsearch, Logstash e Kibana).

[Kibana Local](http://localhost:5601)

## Requisitos

Seguem os requisitos para executar este exemplo:

- De perferência Sistema Operacional Linux (não testado em outro ambiente).
- Navegador
- Docker
- Java 8+
- maven

## Arquivos

### comandos.sh
Comandos utilizados para preparar e iniciar o ambiente ELK e Beats para envio de informação.

### filebeat.yml
Configuração do Filebeat para envio de logs da aplicação Java exemplo (pasta /tedbox).

### metricbeat.yml
Configuração do Metricbeat para envio das informações de máquina.

### exemplos.js
Exemplos de utilização do console.qqcoisa no navegador.

### tedbox.conf
Configuração do Logstash para indexação dos logs da aplicação exemplo.


## Referencias
- [Docker Hub ELK](https://hub.docker.com/r/sebp/elk/)
- [Documentação Docker ELK](http://elk-docker.readthedocs.io/)
- [Documentação Logstash](https://www.elastic.co/guide/en/logstash/current/introduction.html)
- [Documentação Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/getting-started.html)
- [Documentação Filebeat](https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-getting-started.html)
- [Doc. Filebeat on Docker](https://www.elastic.co/guide/en/beats/filebeat/current/running-on-docker.html)
- [Documentação Metricbeat](https://www.elastic.co/guide/en/beats/metricbeat/current/metricbeat-getting-started.html)
- [Doc. Metricbeat on Docker](https://www.elastic.co/guide/en/beats/metricbeat/current/running-on-docker.html)
- [Documentação Log4J](https://logging.apache.org/log4j/2.x/)