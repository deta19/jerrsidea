#!/bin/bash

#i don;t normally write in bash, so this script/shell whatever its in its begining

#set the link you want to check
site_link=$(wget https://www.harlemheritage.com -q -O -)
#echo $site_link


#create array with tags taht need sarched/detected
    #source: https://gist.github.com/lancejpollard/1978404
    #these should go in different scripts/shells and then just include/load them here as needed
basic_html_meta_tags=(name=\"keywords\"
name=\"description\"
name=\"subject\"
name=\"copyright\"
name=\"language\"
name=\"robots\"
name=\"revised\"
name=\"abstract\"
name=\"topic\"
name=\"summary\"
name=\"Classification\"
name=\"author\"
name=\"designer\"
name=\"copyright\"
name=\"reply-to\"
name=\"owner\"
name=\"url\"
name=\"identifier-URL\"
name=\"directory\"
name=\"category\"
name=\"coverage\"
name=\"distribution\"
name=\"rating\"
name=\"revisit-after\"
http-equiv=\"Expires\"
http-equiv=\"Pragma\"
http-equiv=\"Cache-Control\" )


for i in "${basic_html_meta_tags[@]}"; 
    do 
        if [[ $site_link == *"$i"* ]]; then
            echo "$i exists!"
        else
            echo "$i not exists!"
        fi
done
