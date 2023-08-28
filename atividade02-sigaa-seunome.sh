#!/bin/bash
echo "Digite a nota do primeiro Bimestre"
read nota1
echo "Digite a nota do segundo bimestre" 
read nota2
if [ $nota1 -lt 6 ] && [ $nota2 -lt 6 ]
	then 
	if [ $nota1 -lt $nota2 ] 
		then 
		echo "Digite a nota da R1"
		read nota1
		echo "Nota recuperada do 1 bimestre $nota1"
	else 	
		 echo "Digite a nota R1"
		read nota2
		echo "Nota recuperada do 2 bimestre $nota2"
	fi
else
	if [ $nota1 -lt 6 ]
		then 
		 echo "Digite a nota R1"
		read nota1
		echo "Nota recuperada do 1 bimestre $nota1"
	
	elif [ $nota2 -lt 6 ]
	then
		echo "Digite a nota da R1"
		read nota2
		echo "Nota recuperada do 2 bimestre $nota2"
	fi
fi	
	
echo "Digite a nota do terceiro bimestre"
read nota3
echo "Digite a nota do quarto Bimestre"
read nota4

if [ $nota3 -lt 6 ]  && [  $nota4 -lt 6 ]
	then 
	if [ $nota3 -lt $nota4 ] 
		then 
		echo "Digite a nota da R2"
		read nota3
		echo "Nota recuperada do 3 bimestre $nota3"
	else 	
		 echo "Digite a nota R2"
		read nota4
		echo "Nota recuperada do 4 bimestre $nota4"
	fi
else
	if [ $nota3 -lt 6 ]
		then 
		echo "Digite a nota da R2"
		read nota3
		echo "Nota recuperada do 3 bimestre $nota3"
	
	elif [ $nota4 -lt 6 ]
	then
		echo "Digite a nota da R2"
		read nota4
		echo "Nota recuperada do 4 bimestre $nota4"
	fi
fi	
echo "Digite a porcentagem de faltas: " 
read porcentAula
if [ $porcentAula -ge 25 ] 
then
echo "Aluno reprovado por falta"
fi

soma=$(($nota1 + $nota2 + $nota3 + $nota4))
echo $soma
m4=$(($soma/4))
	
	if [ $m4 -ge 6 ] 
	then
		echo "Aluno aprovado com a média de $m4"
	fi
	if [ $m4 -lt 6 ] 
	then
		echo "Digite a nota da RF"
		read RF
		media=$((($m4 * 4 + $RF * 6)/10))
	fi
	echo $media
	if [ $media -lt 6 ] then
		echo "Aluno reprovado com Média Final inferior a 6"
	fi
	if [ $media -ge 6 ] 
		echo "Aluno aprovado"
	fi
