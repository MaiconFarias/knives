#!/bin/bash

verm='\033[1;31m'
verd='\033[1;32m'
azul='\033[1;34m'
fim='\033[0m'

echo " "
echo -e '\033[0;32m'"           Instalador de Ferramentas       "'\033[0m'
echo -e '\033[0;31m''''
1 - Sublist3r    6 - Gobuster    11 - Httprobe     16 - Gospider
2 - Subfinder    7 - Dirsearch   12 - Gauplus      17 - GetJs
3 - Assetfinder  8 - Ffuf        13 - Waybackurls  18 - ParamSpider
4 - Sudomy       9 - Anew        14 - JSScanner    19 - Nuclei
5 - Findomain    10 - Httpx      15 - Subjs        20 - Dalfox
21 - Todas
''''\033[0m'
echo -e $azul"Digite o numero correspondente: "$fim
read num
case $num in
1)
        echo $verm"   S  U  B  L  I  S  T  3  R    "$fim
        git clone https://github.com/aboul3la/Sublist3r.git
        clear
;;
2)
        echo -e $verd"        S  U  B  F  I  N  D  E  R      "$fim
        go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
        sudo mv $HOME/go/bin/subfinder /usr/bin/
        clear
        subfinder -version
;;
3)
        echo -e $azul"     A  S  S  E  T  F  I  N  D  E  R     "$fim
        go install -v github.com/tomnomnom/assetfinder@latest
        sudo mv $HOME/go/bin/assetfinder /usr/bin
        clear
;;
4)
        echo -e $verm"              S  U  D  O  M  Y           "$fim
        git clone --recursive https://github.com/screetsec/Sudomy.git
        cd Sudomy
        pip3 install -r requirements.txt
        clear
        ./sudomy
;;
5)
        echo -e $verd"         F  I  N  D  O  M  A  I  N         "$fim
        curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
        apt install unzip -y
        unzip findomain-linux.zip
        chmod +x findomain
        sudo mv findomain /usr/bin/findomain
        clear
        findomain --help
;;
6)
        echo -e $azul"         G  O  B  U  S  T  E  R           "$fim
        go install github.com/OJ/gobuster/v3@latest
        go get && go build
        go install
        sudo mv $HOME/go/bin/gobuster /usr/bin
        clear
        gobuster help

;;
7)
        echo -e $verd"          D  I  R  S  E  A  R  C  H        "$fim
        sudo apt install dirsearch -y
        clear
        dirsearch
;;
8)
        echo -e $verm"           F   F   U   F         "$fim
        go install github.com/ffuf/ffuf/v2@latest
        sudo mv $HOME/go/bin/ffuf /usr/bin
        clear
        ffuf

;;
9)
        echo -e $verm"              A   N   E   W         "$fim
        go install -v github.com/tomnomnom/anew@latest
        sudo mv $HOME/go/bin/anew /usr/bin
        clear
;;
10)
        echo -e $azul"           H   T   T   P   X            "$fim
        go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
        sudo mv $HOME/go/bin/httpx /usr/bin
        clear
        httpx -h
;;
11)
        echo -e $verd"           H   T   T   P   R   O   B   E          "$fim
        go install github.com/tomnomnom/httprobe@latest
        sudo mv $HOME/go/bin/httprobe /usr/bin
        clear
;;
12)
        echo -e $verm"           G   A   U   P   L   U   S            "$fim
        go install github.com/bp0lr/gauplus@latest
        sudo mv $HOME/go/bin/gauplus /usr/bin
        clear
        gauplus -h
;;
13)
        echo -e $azul"           W   A   Y   B   A   C   K   U   R   L   S        "$fim
        go install github.com/tomnomnom/waybackurls@latest
        sudo mv $HOME/go/bin/waybackurls /usr/bin
        clear
;;
14)
        echo -e $verd"           J   S   S   C   A   N   N   E   R      "$fim
        git clone https://github.com/0x240x23elu/JSScanner.git
        cd JSScanner
        pip3 install -r requirements.txt
        python3 JSScanner.py
;;
15)
        echo -e $verm"            S   U   B   J   S    "$fim
        GO111MODULE=on go get -u -v github.com/lc/subjs@latest
        sudo mv $HOME/go/bin/subjs /usr/bin
        clear
        subjs -h
;;
16)
        echo -e $azul"            G   O   S   P   I   D   E   R    "$fim
        GO111MODULE=on go install github.com/jaeles-project/gospider@latest
        sudo mv $HOME/go/bin/gospider /usr/bin
        clear
        gospider -h
;;
17)
        echo -e $verd"            G   E   T   J   S          "$fim
        go install github.com/003random/getJS@latest
        sudo mv $HOME/go/bin/getJS /usr/bin
;;
18)
        echo -e $verm"            P   A   R   A   M   S   P   I   D   E   R        "$fim
        git clone https://github.com/devanshbatham/paramspider
        cd paramspider
        pip install .
;;
19)
        echo -e $azul"            N   U   C   L   E   I       "$fim
        go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
        sudo mv $HOME/go/bin/nuclei /usr/bin
        nuclei -h
;;
20)
        echo -e $verd"            D   A   L   F   O   X           "$fim
        go install github.com/hahwul/dalfox/v2@latest
        sudo mv $HOME/go/bin/dalfox /usr/bin    GO111MODULE=on go install github.com/jaeles-project/gospider@latest
        sudo mv $HOME/go/bin/gospider /usr/bin
        clear
        gospider -h
;;
21)
        echo $verm"   S  U  B  L  I  S  T  3  R    "$fim
        git clone https://github.com/aboul3la/Sublist3r.git
        echo -e $verd"        S  U  B  F  I  N  D  E  R      "$fim
        go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
        sudo mv $HOME/go/bin/subfinder /usr/bin/
        echo -e $azul"     A  S  S  E  T  F  I  N  D  E  R     "$fim
        go install -v github.com/tomnomnom/assetfinder@latest
        sudo mv $HOME/go/bin/assetfinder /usr/bin
        echo -e $verm"              S  U  D  O  M  Y           "$fim
        git clone --recursive https://github.com/screetsec/Sudomy.git
        cd Sudomy
        pip3 install -r requirements.txt
        echo -e $verd"         F  I  N  D  O  M  A  I  N         "$fim
        curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
        unzip findomain-linux.zip
        chmod +x findomain
        sudo mv findomain /usr/bin/findomain
        echo -e $azul"         G  O  B  U  S  T  E  R           "$fim
        go install github.com/OJ/gobuster/v3@latest
        go get && go build
        go install
        sudo mv $HOME/go/bin/gobuster /usr/bin
        echo -e $verd"          D  I  R  S  E  A  R  C  H        "$fim
        sudo apt install dirsearch -y
        echo -e $verm"           F   F   U   F         "$fim
        go install github.com/ffuf/ffuf/v2@latest
        sudo mv $HOME/go/bin/ffuf /usr/bin
        echo -e $verm"              A   N   E   W         "$fim
        go install -v github.com/tomnomnom/anew@latest
        sudo mv $HOME/go/bin/anew /usr/bin
        echo -e $azul"           H   T   T   P   X            "$fim
        go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
        sudo mv $HOME/go/bin/httpx /usr/bin
        echo -e $verd"           H   T   T   P   R   O   B   E          "$fim
        go install github.com/tomnomnom/httprobe@latest
        sudo mv $HOME/go/bin/httprobe /usr/bin
        echo -e $verm"           G   A   U   P   L   U   S            "$fim
        go install github.com/bp0lr/gauplus@latest
        sudo mv $HOME/go/bin/gauplus /usr/bin
        echo -e $azul"           W   A   Y   B   A   C   K   U   R   L   S        "$fim
        go install github.com/tomnomnom/waybackurls@latest
        sudo mv $HOME/go/bin/waybackurls /usr/bin
        echo -e $verd"           J   S   S   C   A   N   N   E   R      "$fim
        git clone https://github.com/0x240x23elu/JSScanner.git
        cd JSScanner
        pip3 install -r requirements.txt
         echo -e $verm"            S   U   B   J   S    "$fim
        GO111MODULE=on go get -u -v github.com/lc/subjs@latest
        sudo mv $HOME/go/bin/subjs /usr/bin
        echo -e $azul"            G   O   S   P   I   D   E   R    "$fim
        GO111MODULE=on go install github.com/jaeles-project/gospider@latest
        sudo mv $HOME/go/bin/gospider /usr/bin
        echo -e $verd"            G   E   T   J   S          "$fim
        go install github.com/003random/getJS@latest
        sudo mv $HOME/go/bin/getJS /usr/bin
        echo -e $verm"            P   A   R   A   M   S   P   I   D   E   R        "$fim
        git clone https://github.com/devanshbatham/paramspider
        cd paramspider
        pip install .
        echo -e $azul"            N   U   C   L   E   I       "$fim
        go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
        sudo mv $HOME/go/bin/nuclei /usr/bin
        echo -e $verd"            D   A   L   F   O   X           "$fim
        go install github.com/hahwul/dalfox/v2@latest
        sudo mv $HOME/go/bin/dalfox /usr/bin
;;
*)
        echo -e $verm"             OPCAO INVALIDA!!!      "$fim
esac
