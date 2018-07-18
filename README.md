# EXEMPLOS - Tedbox Express - CataLOGando Conhecimento

Neste respositório possui exemplos de como indexar logs na Plataforma ELK (Elasticsearch, Logstash e Kibana).

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