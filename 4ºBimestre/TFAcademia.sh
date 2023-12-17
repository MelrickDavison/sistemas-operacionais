#!/bin/bash
email='fagc1'
senha='Fabricio9'
costa=0
perna=0
peito=0
usuarios=()

login(){
   input_email=$(dialog --stdout --title 'Confirme Usuário' --inputbox 'Por favor, confirme o email:' 0 0)
   input_senha=$(dialog --stdout --title 'Confirme Usuário' --passwordbox 'Por favor, confirme a senha:' 0 0)
}

mostrar_menu(){
   escolha=$(dialog --stdout --title 'Sistema' --menu 'Escolha uma opção:' 0 0 0 Cadastro 'Adicionar cadastro' Entrada 'Cadastrar entrada de usuário' Saida ' Cadastrar saída de usuário')
      case $? in
      0)
         if [ "$escolha" == 'Cadastro' ]; then
          cadastrar
         elif [ "$escolha" == "Entrada" ]; then
          entrar
         else 
          sair
         fi
         ;;
      *) 
         dialog --title "Erro" --infobox '\n Operação cancelada' 0 0
       esac
}

cadastrar(){
   id=$(dialog --stdout --title 'Informe o ID do Usuário' --inputbox 'ID:' 0 0)
   sleep 2
   encotrado=false
   for idAtual in '${usuarios[@]}'; do
      if [ "$idAtual" == "$id" ]; then
         encontrado=true
         break
      fi
   done
   if [ "$encontrado" == true]; then
   dialog --stdout --title "Aviso" --infobox "Usuário já cadastrado"  0 0
   sleep 2
   mostrar_menu
   else
   dialog --stdout --title "Sucesso" --infobox "Usuário cadastrado com Sucesso" 0 0
   usuarios+=("$id")
   sleep 2
   mostrar_menu
   fi
}

entrar(){
      id=$(dialog --stdout --title 'Informe o ID do Usuário' --inputbox 'ID:' 0 0)
   sleep 2
   encotrado=false
   for idAtual in '${usuarios[@]}'; do
      if [ "$idAtual" == "$id" ]; then
         encontrado=true
         break
      fi
   done
   if [ "$encontrado" == true]; then
   treino=$(dialog --stdout --title "Sistema" --menu "Selecione o treino que começou:" 0 0 0 Perna 'Quadríceps, Panturrilha, Posterior e Glúteo' Costa 'Bíceps, Trapézio e Costa' Peito 'Peito e Tríceps')
   if [ "$treino" == Perna ]; then
      if [ $perna -lt 2 ]; then
         perna=$(($perna + 1))
         dialog --title "Sucesso" --infobox "Aproveite o treino" 0 0
         sleep 2
         mostrar_menu
      else
         dialog --title "Falha" --infobox "Treino está cheio, selecione outro ou aguarde" 0 0
         sleep 2
         mostrar_menu
      fi

   elif [ "$treino" == Costa ]; then
      if [ $costa -lt 2 ]; then
         costa=$(($costa + 1))
         dialog --title "Sucesso" --infobox "Aproveite o treino" 0 0
         sleep 2
         mostrar_menu
      else
         dialog --title "Falha" --infobox "Treino está cheio, selecione outro ou aguarde" 0 0
         sleep 2
         mostrar_menu
      fi
   else
       if [ $peito -lt 2 ]; then
         peito=$(($peito + 1))
         dialog --title "Sucesso" --infobox "Aproveite o treino" 0 0
         sleep 2
         mostrar_menu
      else
         dialog --title "Falha" --infobox "Treino está cheio, selecione outro ou aguarde" 0 0
         sleep 2
         mostrar_menu
      fi
   fi
else
   dialog --stdout --title "Falha" --infobox "Usuário não cadastrado" 0 0
   sleep 2
   mostrar_menu
fi
}

sair(){
      id=$(dialog --stdout --title 'Informe o ID do Usuário' --inputbox 'ID:' 0 0)
   sleep 2
   encotrado=false
   for idAtual in '${usuarios[@]}'; do
      if [ "$idAtual" == "$id" ]; then
         encontrado=true
         break
      fi
   done
   if [ "$encontrado" == true]; then
   treino=$(dialog --stdout --title "Sistema" --menu "Selecione o treino que começou:" 0 0 0 Perna 'Quadríceps, Panturrilha, Posterior e Glúteo' Costa 'Bíceps, Trapézio e Costa' Peito 'Peito e Tríceps')
   if [ "$treino" == Perna ]; then
      if [ $perna -gt 0 ]; then
         perna=$(($perna - 1))
         dialog --title "Sucesso" --infobox "Volte sempre" 0 0
         sleep 2
         mostrar_menu
      else
         dialog --title "Falha" --infobox "Este treino está vazio" 0 0
         sleep 2
         mostrar_menu
      fi

   elif [ "$treino" == Costa ]; then
      if [ $costa -gt 0 ]; then
         costa=$(($costa - 1))
         dialog --title "Sucesso" --infobox "Volte sempre" 0 0
         sleep 2
         mostrar_menu
      else
         dialog --title "Falha" --infobox "Este treino está vazio" 0 0
         sleep 2
         mostrar_menu
      fi
   else
       if [ $peito -gt 0 ]; then
         peito=$(($peito - 1))
         dialog --title "Sucesso" --infobox "Volte sempre" 0 0
         sleep 2
         mostrar_menu
      else
         dialog --title "Falha" --infobox "Este treino está vazio" 0 0
         sleep 2
         mostrar_menu
      fi
   fi
else
   dialog --stdout --title "Falha" --infobox "Usuário não cadastrado" 0 0
   sleep 2
   mostrar_menu
fi
}

dialog --title "Aguarde" --infobox '\nIniciando sistema em 5 segundos...' 0 0
sleep 5
login
while [ "$input_email" != "$email" ]
   do
   dialog --title "Error" --infobox "Email incorreto, tente novamente" 0 0
   sleep 2
   login
done

until [ "$input_senha" == "$senha" ]
   do 
   dialog --title "Error" --infobox "Senha incorreta, tente novamente" 0 0
   sleep 2
   login
done

mostrar_menu