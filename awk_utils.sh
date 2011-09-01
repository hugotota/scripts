#!/bin/bash

# Lista de arquivos que s�o diferentes do m�s atual
for arq in $(ls -l | awk '{ if ($6 != "Sep") print $9 }'); do 
	echo $arq; 
done

# Pega data do arquivo no formato timestamp
ls --full-time -l | awk '{print $6" "$7}'

# Lisa de arquivos que tem RJ7Y no mome
ls -l | awk '{ if(index($9, "RJ7Y")) print $9  }'

# Substitui dados vindo de um arquivo "SQL" testando que tipo de awk ir�
# utilizar por conta da vers�o do S.O.
if [ "$OS" == "solaris" ]; then

    SQL=`cat outro.sql |

         nawk '{
           gsub(/#DATA#/, "<str>", $0);
           print;
         }';`

else

    SQL=`cat outro.sql |

         awk '{
           gsub(/#DATA#/, "<str>", $0);
           print;
         }';`

fi