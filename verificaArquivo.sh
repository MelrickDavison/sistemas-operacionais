#!/bin/bash

echo "Digite o nome do diretório";
read name;
if [-d $name]; then 
	echo "O arquivo já existe";
else 
	mkdir $name;
	echo "Arquivo criado";
fi
