#!/bin/bash

grep -B 1 --no-group-separator "OPERATIVI" lista.txt | grep -v "SISTEMI OPERATIVI" | while read A B C;do echo $A;done
