#!/bin/bash

opcao = $1
case opcao in
--cria)
if(-f "$2"); then
echo "Arquivo já existe";
else
touch "$2"
fi
;;
--apaga)
rm "$2"
echo "Arquivo $2 deletado"
;;
--renomeia)
mv "$2" "$3"
echo "Arquivo $2 renomeado para $3"
;;
*)
echo "Parâmetro inválido"
;;
esac
