#!/bin/bash
sudo kill -s SIGCHLD $1
sudo kill -9 $1
