# Basic Mysql Docker

This is an example that how to build a simple mysql docker container. 
For it deployment, use the next commands:

### Build image with Dockerfile
```
docker build --rm -t <nameimage:version> .
```

### Deploy docker mysql
```
docker run --rm -p 3306:3306 --name <namecontainer> <nameimage:version>
```

## Files master.cnf and support_for_high_load.cnf

The file `master.cnf` contain the basic configuration to create a master database and then it can create a slave database.

The file `support_for_high_load.cnf` contain the basic configuration to support high load to database.