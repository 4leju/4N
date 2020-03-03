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
echo -e "\033[92m V1"	
echo -e "   .---,   "
echo -e "  (    ~   4N? "
echo -e "   \   /"
echo -e "    ) (  "    
echo -e "   /   \  \033[0mIngrese \033[91m'q' \033[0mpara Iniciar       "   
end
fish


#Funcion Para Tener Root
function rooted
echo "ROOT"
sleep 1
proot -0 -w ~ $PREFIX/bin/bash
end

#ACTUALIZACION
function updata
git clone https://github.com/4leju/4N
cd 4N/
bash install
end
#Funcion Para Iniciar la terminal
function q
fish
echo -e "\033[92mACCESS GRANTED\033[0m"
end

#REPORTES
function reporte
echo -e "\033[92mREPORTES EN 4N\033[0m"
sleep 1
termux-open https://4name.simdif.com 
end 

#Funcion Para los lideres
function 4NAME

echo -e "\033[92m--4NAME--\033[0m"

echo "-" (set_color blue)"Marina" (set_color normal)
echo "-" (set_color red)"Alejo" (set_color normal) 
echo "-" (set_color brcyan)"мανєяιϲκ★⁴ⁿ?" (set_color normal)⁩
echo "-" (set_color blue)"Danlo" (set_color normal)
echo -e "- \33[38;5;208mDana\033[0m "
end

#Funcion Para Entrar al almacenamiento
function sdcard
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
echo "COMANDO     DESCRIPCION"
echo ""
echo "updata      4name Actualizacion "
echo "reporte     Pagina Web de Reportes "
echo "rooted      Acceso de root para terminal"
echo "sdcard      Acceder a almacenamiento interno"
echo "4NAME       Creadores e lideres "
echo "bash ddos   denegacion de servicio (ddos + ip) "
echo "bash userr  Encuentre nombres de usuario en más de 75 redes sociales"
echo "guia        Guia De Termux"
end



function fish_prompt
    echo (set_color brcyan )"4N?"(set_color red)"-"(set_color blue)"> "

   end

