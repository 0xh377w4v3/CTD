#!/bin/bash
if [ $# -eq 0 ]
then
    echo "Sintaxe: \"$0 nome_do_arquivo\" "
    exit 1
fi

if [ -f $1 ]
then
    echo "$1 existe e é arquivo"
else
    echo "$1 nao é um arquivo"
fi
