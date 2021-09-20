#!/bin/bash

converte_imagem(){
cd ~/Documents/Alura/shellscript/etc/imagens-livros

if[ ! -d png]
then
  mkdir png
fi

for imagem in *.jpg
do 
  imagem_sem_extensao=$(ls $imagem | awk -F . '{print $1}')
  convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done 
}
converte_imagem
if[ @? -eq 0 ]
then
  echo 'Conversao feita com sucesso'
else
  echo 'Um erro ocorreu na conversao'
fi