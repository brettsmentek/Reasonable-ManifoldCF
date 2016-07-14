## Reasonable ManifoldCF

A repository to get started with ManifoldCF (MCF) with reasonable configs for using PostgreSQL, rather than Derby. 

MCF is a crawler framework that supports multiple output connections, including Solr, HDFS, and ElasticSearch.

#### The Basic Stack

- [Git](https://git-scm.com/)
- [ManifoldCF 2.4](https://manifoldcf.apache.org/)

### Assumptions

1. PostgreSQL server running on localhost:5432 with a database named ```crawlerDB```.
2. The following changes have been made to the ```postgresql.conf``` file: 

#####```postgresql.conf:```

- shared_buffers: 1024MB
- checkpoint_segments: 300
- maintenanceworkmem: 2MB
- tcpip_socket: true
- max_connections: 200
- checkpoint_timeout: 900
- datestyle: ISO,European
- autovacuum: off

### Developing

- ```cd multiprocess-zk-example && start.bat```
- Go to: http://localhost:8345/mcf-crawler-ui/login.jsp
- User: admin
- Password: admin
- See ManifoldCF end-user [documentation](https://manifoldcf.apache.org/release/trunk/en_US/end-user-documentation.html) to configure ManifoldCF for your input and output connections
- Change throttling for all connections to 105


