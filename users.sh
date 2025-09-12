#!/bin/bash

# Exercício 5 - Users.sh

# Este script lê o arquivo "/etc/passwd" e extrai o nome de usuário e o nome completo para cada linha.

# A saída do comando "cat" é direcionada (pipe |) para o comando "cut".
# "cat /etc/passwd": Este comando exibe o conteúdo do arquivo, que contém as informaçõe de todos os usuários do sistema.

# O comando "cut" recebe a saída do "cat" e processa linha por linha.
# -d: Define o limitador de campo. No arquivo "/etc/passwd", os campos são separados por ":".
# -f: Especifica quais campos devem ser extraídos.
# 1: O primeiro campo (nome de usuário)
# 2: O quinto campo (nome completo) 

cat /etc/passwd | cut -d ':' -f 1,5
