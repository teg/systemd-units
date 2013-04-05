#!/bin/bash

for package in *; do
        cd ${package}/trunk/
        for kind in service socket target path; do
                for unit in *.${kind}; do
                        if [ -f ${unit} ]; then
                                echo ${unit}
                                install -Dm644 ${unit} ../../../systemd-units/projects/${package}/${kind}/${unit}
                        fi
                done
        done
        cd ../../
done
