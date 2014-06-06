#!/bin/bash

for OPT in $@ ; do

    echo "Starting $OPT"

    case $OPT in
        help)
            echo "deploy:部署代理"
            echo "start:启动代理"
            ;;
        deploy)
            cd server
            python uploader.zip
            ;;
        start)
            python local/proxy.py &
            ;;
    esac

done
