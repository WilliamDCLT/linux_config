IMAG="duclotw@pcserveur.ensimag.fr"
GIT="duclotw@depots.ensimag.fr"
ALIASES="/home/william/.bash_aliases"
WEBPROLAN="176.189.75.243"

function addalias {
    echo -n alias $1 >> $ALIASES
    shift
    echo =\"$@\" >> $ALIASES
    source ~/.bash_aliases
}

function synpad {
	synclient TapButton2=$1 &&
	synclient TapButton3=$1 &&
	synclient VertTwoFingerScroll=$1 &&
	synclient HorizTwoFingerScroll=$1 &&
	synclient ClickFinger2=$1 &&
	synclient ClickFinger3=$1
}
function synpadPartiel {
	synclient TapButton3=$1 &&
	synclient ClickFinger3=$1
}


alias ff="firefox& 2> /dev/null"
alias l="ls"
alias cd..="cd .."
alias gm="gnatmake"
alias xx="exit"
alias tarcomp="tar -vcf"
alias tardecomp="tar -xvf"
alias targzdecomp="tar -xzvf"
alias gcw="gcc -Wall -Wextra -g -std=c99 -o"
alias qemu="qemu-system-mips -M mipscep -nographic -kernel"
alias gqemu="qemu-system-mips -M mipscep -kernel"
alias qemugdb="qemu-system-mips -M mipscep -nographic -s -S -kernel"
alias gdbco="mips-elf-gdb"
alias sourceCEP="source bin/settings.sh"
alias commit="git commit -am"
alias pull="git pull"
alias push="git push"
alias add="git add"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias agi="sudo apt-get install"
alias reboot="sudo shutdown -r now"
alias shutdown="sudo shutdown -h now"
alias tux="tuxguitar"
alias xmax="xbacklight =99"
alias dualscreen="xrandr --output VGA1 --pos 1024x0 --mode 1680x1050 --rate 60"
alias singlescreen="xrandr --fb 1024x600"
alias vimaliases="vim ~/.bash_aliases"
alias vimalias="vim ~/.bash_aliases"
alias sourcealias="source ~/.bash_aliases"
alias sourcealiases="source ~/.bash_aliases"
alias sshimag="ssh duclotw@pcserveur.ensimag.fr"
alias apache_restart="sudo /etc/init.d/apache2 restart"
alias phpconsole="php app/console"
alias phpconsole="php app/console"
alias sshwebprolan="ssh -p 5678 william@176.189.75.243"
alias asseticdump="phpconsole assetic:dump --env=prod --no-debug"
alias chmodrec="sudo chmod -R a+rw ."
alias schemasql="php app/console doctrine:schema:update --dump-sql"
alias schemaforce="php app/console doctrine:schema:update --force"
alias getcomposer="curl -sS https://getcomposer.org/installer"
alias cdwebprolan="cd /var/www/webprolan"
alias netbeans="/home/willol/Local/netbeans-8.0.2/bin/netbeans"
alias untracked=""
alias untracked="git ls-files --others --exclude-standard"
alias fixturesload="php app/console doctrine:fixtures:load"
alias popcorntime="/usr/local/popcorntime/Popcorn-Time &"
