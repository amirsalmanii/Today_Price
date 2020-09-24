#!/bin/bash

echo
echo "** KHOSH AMADID BE BARNAME GEYMAT ROZ KALA ASASI **"
echo
read -p "Tala 18-Ayar=t , Seke=s , Dolar=d , Euro=e , Sakhes-Bours=b , Bitcoin=c : " arz




if [[ $arz == t ]]
then
	echo 
	echo "GEYMAT TALA :"	
	GET https://www.tgju.org/ | egrep info-price | sed 's/[^0-9]*//g' | tail -6 | head -1
	echo

elif [[ $arz == s ]]
then
	echo
	echo "GEYMAT SEKE :"
	GET https://www.tgju.org/ | egrep info-price | sed 's/[^0-9]*//g' | tail -5 | head -1	
	echo

elif [[ $arz == d ]]
then
	echo
	echo "GEYMAT DOLAR :"
	GET https://www.tgju.org/ | egrep info-price | sed 's/[^0-9]*//g' | tail -4 | head -1
	echo

elif [[ $arz == e ]]
then
	echo
	echo "GEYMAT EURO :"
	GET https://www.tgju.org/ | egrep info-price | sed 's/[^0-9]*//g' | tail -3 | head -1	
	echo

elif [[ $arz == b ]]
then 
	echo
	echo "GEYMAT SHAKHES-BOURS :"
	GET https://www.tgju.org/ | egrep info-price | sed 's/[^0-9]*//g' | head -1
	echo

elif [[ $arz == c ]]
then	
	echo
        echo "GEYMAT BITCOIN :"
        GET https://www.tgju.org/ | egrep info-price | sed 's/[^0-9]*//g' | tail -1
	echo

else
	echo "VORODI ESHTEBAH AST !! "
fi	

 	


