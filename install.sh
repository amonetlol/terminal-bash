#!/bin/bash

#copiando o tema para a pasta correta
mkdir -p ~/.config/posh-theme/themes/
cp dracula.omp.json ~/.config/posh-theme/themes/

#configurando o .bashrc
echo 'export PATH=$PATH:/home/'"$USER"'/.local/bin
Theme="dracula"
eval "$(oh-my-posh init bash --config ~/.config/posh-theme/themes/$Theme.omp.json)"' >> ~/.bashrc

#atualizando o .bashrc
source ~/.bashrc
