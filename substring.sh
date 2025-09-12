#!/bin/bash

# Exercício 3 - Substring.sh

# Recebe duas palavras como parâmetro e verifica se a primeira está contida na segunda.

# Verifica se está sendo passado exatamente duas palavras como parâmetros.
if [ "$#" -eq 2 ]; then

	# Armazena os parâmetros em variáveis.
	substring="$1"
	palavra="$2"

	# Verifica se a substring está contida na palavra usando "[[...]]".
	# O "*" está sendo utilizado para representar qualquer sequência de caracteres.
	if [[ "$palavra" == *"$substring"* ]]; then
		# Exibe uma mensagem dizendo que a substring está contida na palavra.
		echo "$substring está contida em $palavra"
	fi
	# Caso a substring não esteja contida na palavra, não exibe nada.

# Caso tenha sido passado menos ou mais do que duas palavras como parâmetros, exibe mensagem de erro e encerra	 o programa.
else
	echo "Erro: Forneça exatamente duas palavras"
	echo "Uso: $0 <substring> <palavra>"
fi

