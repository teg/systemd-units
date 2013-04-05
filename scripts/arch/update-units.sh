#!/bin/bash

for package in *; do
        cd ${package}/trunk/
        for unit in *.{service,socket}; do
                if [ -f ${unit} ]; then
                        echo ${unit}
                        install -Dm644 ${unit} ../../../systemd-units/projects/${package}/${unit}
                fi
        done
        cd ../../
done
