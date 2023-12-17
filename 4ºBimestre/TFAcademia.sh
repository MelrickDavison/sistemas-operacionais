#!/bin/bash
senha='pabloLindo'
costa=0
perna=0
peito=0

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

if [ $? == "Cadastro"]; then
 cadastrar
elif [ $? -eq "ENtrada"]; then
entrar
else
sair
fi
else
dialog --title 'Error' --infobox '\nSenha Correta'  0 0
fi

cadastrar() {
    nome=$(dialog --title 'Informe o nome do Usuário' --inputbox 'Nome  :' 0 0)
    
}

entrar() {
    nome=$(dialog --title 'Informe o nome do Usuário' --inputbox 'Nome  :' 0 0)
    treino=$(dialog                                       \
   --title 'Sistema'                          \
   --menu 'Selecione o treino que começou:'  \
   0 0 0                                     \
   Perna       'Quadríceps, Panturrilha, Posterior e Glúteo'           \
   Costa     'Bíceps, Trapézio e Costa'   \
   Peito       'Peito e Tríceps'       
   )
if [ $perna -lt 30 ]; then     
 if [ "$treino" == 'Perna' ]; then
   perna=$(($perna+1))
    fi
 elif [ "$treino" == 'Costa' ]; then
    costa=$(($costa+1))
 else
    peito=$(($peito+1))
       fi
}

sair() {
    nome=$(dialog --title 'Informe o nome do Usuário' --inputbox 'Nome  :' 0 0)
    treino=$(dialog                                       \
   --title 'Sistema'                          \
   --menu 'Selecione o Treino que terminou:'  \
   0 0 0                                     \
   Perna       'Quadríceps, Panturrilha, Posterior e Glúteo'           \
   Costa     'Bíceps, Trapézio e Costa'   \
   Peito       'Peito e Tríceps'       
   )
if [ $perna -gt 0 ]; then     
 if [ "$treino" == 'Perna' ]; then
   perna=$(($perna-1))
    fi
    fi
    
if [ $costa -gt 0 ]; then     
 if [ "$treino" == 'Costa' ]; then
    costa=$(($costa-1))
    fi 
    fi

if [ $peito -gt 0 ]; then   
    if [ "$treino" == 'Peito' ]; then
    peito=$(($peito-1))
       fi
       fi
}