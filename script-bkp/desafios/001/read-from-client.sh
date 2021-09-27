#!/bin/bash

cd ~/alura-shellscript/script-bkp/desafios

#$guest1 
#$guest2  
#$days 
TRUE=1
FALSE=0
paramsValidation() {
  whileFlag=$FALSE
  guest_1_formatado=$(echo $guest1 | grep '^[a-zA-Z]*$')
  guest_2_formatado=$(echo $guest2 | grep '^[a-zA-Z]*$')
  if  [ $# -lt 0 ] || [ -z $guest_1_formatado ] || [ -z $guest_2_formatado ] || [ $3 -lt 0 ] ; then
      echo "Ocorreu um erro, pode ter sido um valor vazio, qtd de dias negativo OU algum numero nos nomes"
      whileFlag=$TRUE
    else
      echo "Cadastrado com sucesso"
      whileFlag=$FALSE
  fi 
}


readForm() {
  echo "Entre com os dados a seguir: "
  read -p "Digite o nome do convidado 1: " guest1  
  read -p "Digite o nome do convidado 2: " guest2
  read -p "Digite a quantidade de dias: " days
}

readFromClient() {
  readForm
  paramsValidation $guest1 $guest2 $days
  if [ $whileFlag == $TRUE ]
  then
    while [ $whileFlag == $TRUE ] ; do
      readForm
      paramsValidation $guest1 $guest2 $days
    done
  fi
}
readFromClient


