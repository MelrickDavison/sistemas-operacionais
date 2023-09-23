#!/bin/bash

echo "Digite o nome do diretório";
read name;
if [-d "$name"]; then 
	echo "O diretório $name já existe";
else 
	mkdir $name;
	echo "O diretório $name foi criado";
fi
