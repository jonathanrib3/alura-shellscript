#!/bin/bash


calculate(){
  . ./load-function.sh
  if [ $((days%2)) -eq 0 ]
  then
    echo $guest1 'Foi convidada a' `expr $days - 1` 'dia(s)'
    echo $guest2 'Foi convidado a' `expr $days - 4` 'dia(s)'
  else
    echo $guest1 'Foi convidada a' `expr $days` 'dia(s)'
    echo $guest2 'Foi convidado a' `expr $days + 7` 'dia(s)'
  fi
}

calculate 
