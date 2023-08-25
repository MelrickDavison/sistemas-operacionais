#!/bin/bash
echo "Digite a nota do primeiro Bimestre"
read nota1
echo "Digite a nota do segundo bimestre" 
read nota2

if [ nota1 -lt 6 ]  && [  nota2 -lt 6 ]
then 

	if [ nota1 -lt nota2 ] 
		then 
		echo "Digite a nota da R1"
		read R1
		nota1 = $R1 
	fi

	else 	
		 echo "Digite a nota R1"
		read R1
		nota2 = $R1
	fi
fi
	if [ nota1 -lt 6 ]
		then 
		read R1
		nota1 = $R1
	fi
	elif [ nota2 -lt 6 ]
		echo "Digite a nota da R1"
		read R1
		nota2 = $R1
	fi
echo "Digite a nota do terceiro bimestre"
read nota3
echo "Digite a nota do quarto Bimestre"
read nota4

if [ nota3 -lt 6 ] && [  nota4 -lt 6 ] 
	then 
	if[ nota3 -lt nota4 ] 

	then 
	echo "Digite nota da R2"
	read R2
	nota3 = $R2
	fi

	else
		echo "Digite a nota da R2"
		read R2
		nota4 = $R2
	fi
fi


 
