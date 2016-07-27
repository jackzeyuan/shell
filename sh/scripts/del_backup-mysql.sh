#!/bin/bash
cd /data/backup/database
find ./ -mtime +2|xargs rm -rf
