#!/bin/bash

#Invocamos a mount para montar entradas en /etc/fstab
mount -a

#Uso exec para lanzar un proceso independiente de bucle infinito
exec bash -c "while true;do sleep 10;done"

