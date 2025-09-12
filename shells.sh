#!/bin/bash

# Exercício 6 - Shells.sh

# Este script lê o arquivo "/etc/passwd" e extrai o ultimo campo (o shell), e então exibe na tela os únicos shells encontrados.

# O processo é feito por 3 etapas usando pipes ("|"), para passar a saída de um comando para a entrada do próximo.

# cat /etc/passwd
# Exibe o conteúdo do arquivo com as informações dos usuários.

# | cut -d ':' -f 7
# Pega a saída do "cat" e corta, deixando apenas o sétimo campo (o shell), que é separado por ":".

# | sort
# Pega a lista de shells do "cut" e organiza alfabéticamente.

# | uniq
# Pega a lista ordenada pelo sort e remove todas as linhas duplicadas.

cat /etc/passwd | cut -d ':' -f 7 | sort | uniq
