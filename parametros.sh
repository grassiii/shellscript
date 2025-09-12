#!/bin/bash

# Exercício 7 - Parametros.sh

# Este script exibe todos os parâmetros recebidos na linha de comando, e então exibe um por um.

# Inicia um contador de parâmetros com o valor 1.
contador=1

# O loop continua a ser processado enquanto houver parâmetros a serem processados.
# O "$#" armazena o número total de parâmetros.
# Enquanto o número de parâmetro for maior que zero, o loop continua.
while [ "$#" -gt 0 ]; do

	# O "$1" é uma varíavel que armazena o primeiro parâmetro da lista.
	echo "Parâmetro $contador: $1"

	# O comando shift remove o primeiro parâmetro da lista, fazendo com que o segundo se torne o primeiro e assim por diante.
	shift

	# Incrementa o valor para o próximo parâmetro.
	((contador++))

done
