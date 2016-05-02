IMAG="duclotw@pcserveur.ensimag.fr"
GIT="duclotw@depots.ensimag.fr"
ALIASES="/home/william/.bash_aliases"
GITHUB_CONF="~/gitHub/linux_config/"
WEBPROLAN="176.189.75.243"
SHINRAY="u61026053@u61026053.1and1-data.host"

export PATH=$HOME/programmation/Projet_GL/Projet/src/main/bin:$PATH
export PATH=$HOME/programmation/Projet_GL/global/bin:$PATH
export PS1='\[\e[32;1m\]\u\[\e[34;1m\]@\[\e[36;1m\]\H \[\e[34;1m\]\w\[\e[32;1m\] $ \[\e[0m\]'

function save_config() {
    here=`pwd`
    cd ~/gitHub/linux_config
    cp $ALIASES .
    git add .bash_aliases
    git commit -m "New aliases"

    git pull
    git push
    cd $here
}

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

function bak {
    target=${1%/}
    bak=$target.bak
    rm -rf $bak 2> /dev/null
    cp -r $target $bak
}

function schemaupdate {
	php app/console doctrine:schema:update --dump-sql &&
	echo &&
	read -p "Update schema ? " -n 1 -r
	echo
	if [[ $REPLY =~ ^[YyOo]$ ]]
	then
		php app/console doctrine:schema:update --force
	else
 		if [ -z $REPLY ]
		then
			php app/console doctrine:schema:update --force
		fi
	fi
}

function update_github_conf() {
	cp /etc/X11/xorg.conf.d/50-synaptics.conf $GITHUB_CONF && 
	cp ~/.config/touchegg/touchegg.conf $GITHUB_CONF && 
	cp ~/.config/touchpad-settings.sh $GITHUB_CONF && 
	cp ~/.bash_aliases $GITHUB_CONF && 
	cp /home/william/.vimrc $GITHUB_CONF;
}

function diffbench() {
	diff /home/william/programmation/aod/AOD/benchmark/benchmark_0$1/target /home/william/programmation/aod/AOD/benchmark/benchmark_0$1/target_out
}

function mail() {
	if [[ $# -lt 3 ]]; then
		echo "1 : destinataire"
		echo "2 : sujet"
		echo "3 : message"
		echo "4 : piece jointe"
		return
	fi

	echo $3 | mutt -a "$4" -s "$2" -- $1
}

function slay() {
    tokill=`pgrep $1`
    kill -9 $tokill
}

alias geditaliases="gedit $ALIASES &"
alias ff="firefox& 2> /dev/null"
alias l="ls"
alias cd..="cd .."
alias gm="gnatmake"
alias xx="exit"
alias tarcomp="tar -vcf"
alias tardecomp="tar -xvf"
alias targzdecomp="tar -xzvf"
alias commit="git commit -am"
alias pull="git pull"
alias push="git push"
alias add="git add"
alias ll="ls -lh"
alias la="ls -a"
alias lla="ls -la"
alias agi="sudo apt-get install"
alias reboot="sudo shutdown -r now"
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
alias asseticdump="phpconsole assetic:dump --env=prod --no-debug"
alias chmodrec="sudo chmod -R a+rw ."
alias getcomposer="curl -sS https://getcomposer.org/installer"
alias cdwebprolan="cd /var/www/webprolan"
alias untracked=""
alias untracked="git ls-files --others --exclude-standard"
alias fixturesload="php app/console doctrine:fixtures:load"
alias netbeans="/usr/local/bin/netbeans.sh"
alias nethogs="sudo nethogs wlan0"
alias gp6="/opt/GuitarPro6/launcher.sh"
alias gp="gp6"
alias guitarpro="gp6"
alias sudo="sudo "
alias agud="sudo apt-get update"
alias agug="sudo apt-get upgrade"
alias aguu="agupd agupg"
alias teeworld="/usr/local/bin/teeworlds-0.6.3-linux_x86_64/teeworlds"
alias hscroll0="synclient HorizTwoFingerScroll=0"
alias hscroll1="synclient HorizTwoFingerScroll=1"
alias tex="texmaker"
alias cim="vim"
alias clion="/usr/local/bin/clion/bin/clion.sh"
alias stremio="/opt/Stremio/Stremio.sh"
alias apt-get="sudo apt-get"
alias testlex="/home/william/programmation/Projet_GL/Projet/src/test/script/exhaustive-lex.sh"
alias testsynt="/home/william/programmation/Projet_GL/Projet/src/test/script/exhaustive-synt.sh"
alias intellij="/usr/local/bin/intellij.sh"
alias itj="intellij"
alias phpstorm="/usr/local/bin/phpstorm.sh"
alias phps="phpstorm"
alias cdtest="cd /home/william/programmation/Projet_GL/Projet/src/test/script/"
alias cdgl="cd /home/william/programmation/Projet_GL/Projet/"
alias mvncomp='here=`pwd`; cdgl && mvn compile; cd $here'
alias testcontext="/home/william/programmation/Projet_GL/Projet/src/test/script/exhaustive-context.sh"
alias poly="evince /home/william/programmation/Projet_GL/Projet/poly-projet-GL.pdf &"
alias testgen="/home/william/programmation/Projet_GL/Projet/src/test/script/exhaustive-codegen.sh"
alias testcli="/home/william/programmation/Projet_GL/Projet/src/test/script/exhaustive-CLI.sh"
alias pse="ps -e"
alias killstremio='tokill=`pgrep Stremio` && kill -9 $tokill'
alias ftp_restart="sudo service vsftpd restart"
alias agr="sudo apt-get remove"
alias agar="sudo apt-get autoremove"
alias qwerty="setxkbmap fr"
alias azerty="setxkbmap us"
alias vimapache="sudo vim /etc/apache2/sites-available/000-default.conf"
alias df="df -h"
alias cdd="pushd"
alias cdr="popd"
alias ..="cd .."
alias cd..=".."
alias ...="cd ../.."
alias ....="cd ../../.."
alias setroot="root=/home/william"
alias cdroot="cd /home/william"
alias mkdir="mkdir -p"
alias find.="find . -name"
alias findroot="find / -name"
alias gRep="grep -R"
