#!/bin/bash

# Lista de arquivos que são diferentes do mês atual
for arq in $(ls -l | awk '{ if ($6 != "Sep") print $9 }'); do 
	echo $arq; 
done

# Lisa de arquivos que tem RJ7Y no mome
ls -l | awk '{ if(index($9, "RJ7Y")) print $9  }'

# Substitui dados vindo de um arquivo "SQL" testando que tipo de awk irá
# utilizar por conta da versão do S.O.
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