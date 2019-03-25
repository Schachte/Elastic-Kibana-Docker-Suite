#!/bin/bash
chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/data
chmod 777 /usr/share/elasticsearch/data/ods.json
su elasticsearch ./bin/elasticsearch
