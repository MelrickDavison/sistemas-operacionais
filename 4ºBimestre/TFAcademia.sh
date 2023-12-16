#!/bin/bash
senha='pabloLindo'

dialog --title 'Aguarde' --infobox '\nIniciando sistema em 5 segundos...'  0 0

input_senha=$(dialog --title 'Confirme Usuário' --passwordbox 'Por favor, confirme a senha:' 0 0)


if [ "$input_senha" == "$senha" ]
then 

dialog                                       \
   --title 'Sistema'                          \
   --menu 'Escolha uma opção:'  \
   0 0 0                                     \
   Cadastro       'Adicionar cadastro'           \
   Entrada     'Cadastrar entrada de usuário'   \
   Saida       'Cadastrar saída de usuário'             

if [ $? -eq 0]; then
 cadastrar 

else
dialog --title 'Error' --infobox '\nSenha Correta'  0 0
fi

cadastrar() {
    nome=$(dialog --title 'Informe o nome do Usuário' --inputbox 'Nome  :' 0 0)
    
}
