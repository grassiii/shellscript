#!/bin/bash

# Exercício 4 - Juntatudo.sh

# Esse script junta todos os parâmetros que forem passados na variável para uma string e exibe na tela.

# Parâmetro sendo guardado em uma variável, porém é um parâmetro especial, utilizando "$*", tratando como uma única string
# porém separada por espaços. Por exemplo: "a b c".

parametros_com_espaco="$*"

# O echo exibe a variável na tela, porém sendo direcionada (pipe |) para o comando "tr".

echo "$parametros_com_espaco" | tr -d ' '

# O comando "tr" (translate or delete characters) é usado para manipular caracteres.
# -d: é a opção para delete (apagar).
# Com isso, o comando "tr" apaga todos os espaços ' ' da string recebida.
