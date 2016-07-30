#!/bin/bash

# Update CentOS with ant patches
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip nc telnet
