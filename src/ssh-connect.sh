#!/bin/bash

# Server user
USER="test";
# Host name
HOST="test.com";
# Port number
PORT=8080;

ssh ${USER}@${HOST} -oPort=${PORT};
