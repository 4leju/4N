# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end

function __fish_command_not_found_handler --on-event fish_command_not_found
	/data/data/com.termux/files/usr/libexec/termux/command-not-found $argv[1]
end


#BANNER

function fish
clear
echo -e "\033[92m BETA"	
echo "   .---,   "
echo "  (    ~   4N? "
echo "   \   /"
echo "    ) (  "    
echo "   /   \  "   
end
fish


#Funcion Para Tener Root
function rooted
echo "ROOT"
sleep 1
proot -0 -w ~ $PREFIX/bin/bash
end

#ACTUALIZACION
function 4A
git clone https://github.com/4leju/4N
cd 4N/
bash install.sh
end
#Funcion Para Iniciar la terminal
function IT
fish
end

#Funcion Para los lideres
function 4n 
echo -e "\033[92m--4NAME--\033[0m"
echo "- Marina "
echo "- Alejo "
echo "- мανєяιϲκ★⁴ⁿ?⁩ "
echo "- Danlo "
echo "- Dana "
end

#Funcion Para Entrar al almacenamiento
function sd
echo "-sdcard"; cd /sdcard 
end

#Funcion Guia De termux
function guia
echo -e "\033[92mQue es Termux\033[0m"
echo ""
echo "Termux es un emulador de terminal de Android, y un Ambiente de Linux que funciona directamente sin necesidad de rootear nuestros dispositivos ni la necesidad de realizar un setup inicial."
echo ""
sleep 5
echo -e "\033[92mPara saber mas..\033[0m"
termux-open https://medium.com/@bloodbathalchemist/guía-termux-uso-básico-aaa9aa507f9d

end


function ayuda
echo "Ayuda Para 4N?"
echo ""
echo "COMANDO  DESCRIPCION"
echo ""
echo "4A       4name Actualizacion "
echo "IT       Inicio Terminal"
echo "rooted   Acceso de root para terminal"
echo "sd       Aceder a almacenamiento interno"
echo "4n       Creadores e lideres "
echo "guia     Guia De Termux"
end



function fish_prompt
    echo (set_color brcyan )"4N?"(set_color red)"-"(set_color blue)"> "

   end

