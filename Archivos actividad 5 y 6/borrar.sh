#!/bin/bash
docker service remove gale_dbclient
docker service remove gale_galera_cluster
docker service remove gale_maxscale