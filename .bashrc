#!/bin/bash

# Função para abrir o Gmail com o texto de denúncia preenchido
open_gmail() {
    echo "Abrindo o Gmail..."
    xdg-open "mailto:customer-service@kwai.com?subject=Denúncia%20de%20usuário%20no%20Kwai&body=ID:%20$1%0AEste%20usuário%20foi%20denunciado%20por%20ser%20menor%20de%20idade.%20Por%20favor,%20bani-lo%20imediatamente,%20Kwai."
}

# Função para mostrar o menu e processar a escolha do usuário
show_menu() {
    clear
    echo -e "\e[1;36mLucas 2.0\e[0m" # Título em destaque
    echo "====================="
    echo "1. Denunciar"
    echo "2. Sair"
    echo "====================="
    read -p "Escolha uma opção: " choice
    case $choice in
        1) read -p "Digite o ID do usuário que deseja denunciar: " user_id
           open_gmail $user_id
           ;;
        2) echo "Saindo..."
           return ;;
        *) echo "Opção inválida. Por favor, escolha novamente."
           show_menu ;;
    esac
}

# Limpar a tela antes de exibir o menu
clear

# Exibir o menu inicial
show_menu

# Autor
echo "Autor: Lucas Carvalho"
