#!/bin/bash
clear

RED="$(printf '\033[1;31m')"  GREEN="$(printf '\033[1;32m')" PURPLE="$(printf '\033[1;35m')" RESAT="$(printf '\033[0m')"

cat << EOF
${PURPLE}
${PURPLE}    ██████╗ ██████╗  █████╗ ██████╗  ██████╗ ██╗  ██╗     ${RESAT}
${PURPLE}   ██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝     ${RESAT}[ ${GREEN}GRAB DOMAINS BY DATE${RESAT} ${WHITE}]
${PURPLE}   ██║  ███╗██████╔╝███████║██████╔╝██║   ██║ ╚███╔╝      ${RESAT}
${PURPLE}   ██║   ██║██╔══██╗██╔══██║██╔══██╗██║   ██║ ██╔██╗      ${RESAT}    CODE BY ${RED}1337r0j4n${RESAT}
${PURPLE}   ╚██████╔╝██║  ██║██║  ██║██████╔╝╚██████╔╝██╔╝ ██╗     ${RESAT}
${PURPLE}    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝     ${RESAT}

EOF
echo -e "  Enter the date by vaild format ( YYYY-MM-DD ) like $(date +%Y-%m-%d)"
read -p "  Date: " lmknjbhvgvfcdxsza
    if date -d "$lmknjbhvgvfcdxsza" +"%Y-%m-%d" >/dev/null 2>&1; then
        asceifnapoanfamifoqfnq=$(date -d "$lmknjbhvgvfcdxsza" +"%Y-%m-%d")
        read -p "  Page: " mhinibuvyctxrdzeswaq
        echo -e "  Wait a minutes..."
        for vfr in $(seq $mhinibuvyctxrdzeswaq); do
            $(curl https://www.cubdomain.com/domains-registered-by-date/$asceifnapoanfamifoqfnq/$vfr -s -k -A "Mozilla/5.0 (X11; Linux i686; rv:10.0) Gecko/20100101 Firefox/33.0" >> "munubyeciqdjueacneanae.txt")
        done
        if [[ $(cat munubyeciqdjueacneanae.txt | wc -l) -gt "1337" ]]; then
            echo -e "  Extracting domains from source code"
            $(cat munubyeciqdjueacneanae.txt | grep -oP '(?<=<a href="https://www.cubdomain.com/site/)[^"]+' >> "$asceifnapoanfamifoqfnq.txt")
            echo -e "  Total: ${GREEN}$(cat $asceifnapoanfamifoqfnq.txt | sort -u | wc -l)${RESAT} domains found"
            echo -e "  Check: $asceifnapoanfamifoqfnq.txt"
            rm munubyeciqdjueacneanae.txt
        else
            echo -e "  These is no domain that registerd by $asceifnapoanfamifoqfnq date"
        fi
    else
        echo -e "  Date format is invaild bro\n"
    fi
