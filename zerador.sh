#!/bin/bash

# Verifica se o número de parâmetros é exatamente um, caso não seja, exibe uma mensagem e encerra o programa.
if [ "$#" -ne 1 ]; then
	echo "Uso: $0 <numero>"
	exit 1
fi

# Armazena o valor do parâmetro em uma variável.
numero_inicial=$1

# Inicia um loop, que acaba apenas quando o parâmetro ser igual a zero.
while [ "$numero_inicial" -ge 0 ]; do
	# Imprime o valor da variável na saída.
	printf "%s " "$numero_inicial"
	# Diminui o valor da variável em 1.
	let numero_inicial=$numero_inicial-1

done

# Adiciona uma nova linha no final para uma melhor formatação.
echo

exit 0
