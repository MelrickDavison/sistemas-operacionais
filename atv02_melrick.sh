#!/bin/bash

opcao = $1
nome = $2
case opcao in
--cria)
if(-f $nome);
then
echo "Arquivo já existe";
else
touch $nome
fi;;
--apaga)
rm $nome
echo "Arquivo deletado;;
--renomeia)
echo "Digite o novo nome"
read rename
mv $nome $rename;;
*)
echo "Parâmetro inválido";;
esac
