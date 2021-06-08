# Docker Redis Cluster

(clone & edit from this [project](https://github.com/cpapidas/docker-compose-redis-cluster))

This configuration is about Redis Cluster. The following implementation
creates a cluster with 3 master, 3 slave, replicas=1.

![Redis cluster model](https://blog.octo.com/wp-content/uploads/2017/08/screen-shot-2017-08-11-at-14-34-48-245x300.png)

### Production
If you want to use this on production is define for each Redis container to
run in static machine.

### How To Start

1. Download the project `$ git clone git@gitlab.k8s.vn:ps/redis-cluster.git`
2. `cd docker-compose-redis-cluster`
3. `docker-compose build`
4. `docker-compose up` or `docker-compose up -d`


### Writing an example app with redis-py-cluster

[redis-py-cluster](https://github.com/Grokzen/redis-py-cluster)

#### Installation

Latest stable release from pypi

```sh
$ pip install redis-py-cluster
```

#### Usage example

```python
>>> from rediscluster import StrictRedisCluster

>>> # Requires at least one node for cluster discovery. Multiple nodes is recommended.
>>> startup_nodes = [{"host": "127.0.0.1", "port": "7001"}, {"host": "127.0.0.1", "port": "7002"}, {"host": "127.0.0.1", "port": "7003"}, {"host": "127.0.0.1", "port": "7004"}, {"host": "127.0.0.1", "port": "7005"}, {"host": "127.0.0.1", "port": "7006"}]

>>> rc = StrictRedisCluster(startup_nodes=startup_nodes, decode_responses=True)

>>> rc.set("foo", "bar")
True
>>> print(rc.get("foo"))
'bar'
```
