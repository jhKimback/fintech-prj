#!/bin/sh
# This script builds Docker images for each application

# Setting Versions
VERSION='0.0.2'

# Get the root path of the project
cd ..
ROOT_PATH=$(pwd -P)
echo $ROOT_PATH

# Build API image
echo 'API Image Build...'
cd $ROOT_PATH/api && docker build -t api:$VERSION .
echo 'API Image Build... Done'

# Build CONSUMER image
echo 'CONSUMER Image Build...'
cd $ROOT_PATH/consumer && docker build -t consumer:$VERSION .
echo 'CONSUMER Image Build... Done'

# Build CSS image
echo 'CSS Image Build...'
cd $ROOT_PATH/css && docker build -t css:$VERSION .
echo 'CSS Image Build... Done'

# Build nginx image
echo 'nginx Image Build...'
cd $ROOT_PATH/nginx && docker build -t nginx:1.0.2 .
echo 'nginx Image Build... Done'
