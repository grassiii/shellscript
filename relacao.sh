#!/bin/bash

# Exercicio 1 - relação.sh
# O script 'relação.sh' tem a função de receber dois parâmetros e exibir um resultado

# Verifica se está realmente passando dois números como parâmetros, se não estiver, exibe essa mensagem e encerra o programa.
# O '$#' representa o número de parâmetros que forem passados para o programa.
if [ "$#" -ne 2 ]; then
	echo "Uso: $0 <numero1> <numero2>"
	exit 1
fi

# Os parâmetros são acessados através das variáveis $1 e $2. Sendo $1 o primeiro parâmetro e $2 o segundo.
numero1=$1
numero2=$2

# Verificação: caso o primeiro número seja maior que o segundo, usando -gt (greater than).
if [ "$numero1" -gt "$numero2" ]; then
	echo "$numero1 e maior que: $numero2"

# Se a primeira verificação não for verdadeira, verifica a próxima, utilizando -lt (less than).
elif [ "$numero1" -lt "$numero2" ]; then
	echo "$numero1 e menor que: $numero2"

# Se nenhuma das condições acimas for verdadeira, a opção restante é eles serem iguais.
else 
	echo "$numero1 e igual a $numero2"
fi

exit 0
