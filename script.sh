#!/bin/bash

docker login registry.gitlab.com -u devopsgoutam -p 'do!disclos3'

git clone https://gitlab.com/devopsgoutam/collect.ai.git

cp collect.ai/collect_ai_main.sql .

rm -rf collect.ai

docker-compose up -d

