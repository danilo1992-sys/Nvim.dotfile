#!/bin/bash

set -e

Grey=$(tput setaf 240)
Dark_Teal=$(tput setaf 237)
Black=$(tput setaf 235)
Red=$(tput setaf 124)
Green=$(tput setaf 76)
Yellow=$(tput setaf 178)
Blue=$(tput setaf 39)
Magent=$(tput setaf 125)
Cyan=$(tput setaf 45)
White=$(tput setaf 255)
Orange=$(tput setaf 196)
NC=$(tput sgr0)

logo='
      ██████╗  ██████╗     ██████╗ ██████╗ ██████╗ ███████╗
      ██╔══██╗██╔════╝    ██╔════╝██╔═══██╗██╔══██╗██╔════╝
      ██║  ██║██║         ██║     ██║   ██║██║  ██║█████╗  
      ██║  ██║██║         ██║     ██║   ██║██║  ██║██╔══╝  
      ██████╔╝╚██████╗    ╚██████╗╚██████╔╝██████╔╝███████╗
      ╚═════╝  ╚═════╝     ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝'

echo -e "${Orange}${logo}${NC}"
echo -e "${Red} Incio de la configuracion ${NC}"

sudo -v
echo -e " 1) "󰕈 " ${Red} Ubuntu ${NC}"
echo -e " 2) "󰣇 " ${Blue} Arch linux ${NC}"
echo -e " 3) "󰣛 " ${Cyan} Fedora ${NC}"
echo -e " 4) ${Green}salir del menu ${NC}"
read -p "Seleccione una opcion: " op
case $op in
1)
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"&&
  sudo apt-get update -y &&
  sudo apt-get upgrade -y &&
  sudo apt-get install build-essential procps curl file git &&
    test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)" &&
    test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && 
    apt install fzf
  ;;
2)
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"&&
  sudo pacman -S base-devel procps-ng curl file git &&
    test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)" &&
    test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" &&
   
  ;;

3)
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"&&
  sudo yum groupinstall 'Development Tools' &&
    sudo yum install procps-ng curl file git &&
    test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)" &&
    test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" &&
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ;;
4)
  exit
  ;;
*)
  echo -e "${Red} Opcion no valida ${NC}"
  ;;
esac

brew install neovim zellij startship fish fnm
&&

dir_comprobar(){
directorio = $HOME/.config

if [ ! -d "$directorio"]; then
  echo -e "${Green} El directorio config ya esxiste ${NC}"
else
  echo -e "${Red}El directorio no exite y se procedera a crearlo ${NC}"
  mkdir -p $HOME/.config
  echo -e ${Green} "Directorio creado con exito${NC}"
fi
}
dir_comprobar

git_config(){
  git = "/usr/bin/git"

  if [ -x "$git" ]; then
    echo -e "${Green} Git ya esta instalado ${NC}"
  else
    echo -e "${Red} Git no esta instalado ${NC}"
    sudo brew install git
  fi
}
git_config 
&&

fish_comnprobar(){
  archivo="/etc/shells"
  linea="/usr/local/bin/fish"
  
  if grep -q "$archivo" "$linea" ; then
    echo "La linea "$linea" ya existe en el archivo "$archivo""
  else 
  echo "$linea" >> "$archivo"
  chsh -s /usr/local/bin/fish
  fi 
}
fish_comprobar

git clone https://github.com/danilo1992-sys/Nvim.dorfiles.git && cd Nvim.dorfiles && mv * $HOME/.config




