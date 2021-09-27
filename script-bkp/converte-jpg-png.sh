#!/bin/bash

converte-imagem(){
cd ~/imagens-livros

if [ ! -d png ]
then
	    mkdir png
fi
for imagem in *.jpg
do
	local img_sem_extensao=$(ls $imagem | awk -F . '{ print $1 }')
	convert $img_sem_extensao.jpg png/$img_sem_extensao.png
done
}
converte-imagem 2>erros_conversao.txt

if [ $? -eq 0 ]
then
	echo "Conversao realizada com sucesso"
else
	echo "Houve uma falha no processo"
fi
