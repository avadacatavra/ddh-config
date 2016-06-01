

########################## personal aliases ##########################
alias cwd='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias gvim='mvim'


#See how much space I have on a drive
alias diskspace="du -S | sort -n -r |more"

alias cellar='cd /usr/local/Cellar'
alias preview="open -a Preview"
alias nautilus="open"
alias fuckoff="clear"

PS1='[\u@\h:\w] > '

##################### elastic search #################################

#alias es='/opt/elasticsearch-2.1.0/bin/elasticsearch -d -p ~/.espid'
#alias es_stop='kill `cat ~/.espid`'
#alias logstash=''
#alias logstashtest="/opt/logstash-2.1.1/bin/logstash -e 'input { stdin { } } output { stdout {} }'"
#alias logstashstocks='/opt/logstash-2.1.1/bin/logstash -f /Users/dianeduros/Development/elasticsearch/logstash-stocks.conf'
#alias kibana='/usr/local/var/www/kibana/bin/kibana'

###################### ssh ###########################################
#alias paleblue='ssh ddhosfelt@PALEBLUE.local -p 4242'
alias paleblue='ssh ddhosfelt@10.42.42.142 -p 4242'

####################### extract ######################################
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

####################### up ###########################################
up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}


####################### semester aliases ##############################
#alias school='cd ~/Google\ Drive/School/Fall\ 2014/'
#alias projects='cd ~/Documents/School/current-projects/'


########################## start mysql ################################
#alias dsql='sudo mysql -u root -p'

#####TOMCAT
#alias tomcat='/Library/Tomcat/bin/startup.sh'
#alias stoptomcat='/Library/Tomcat/bin/shutdown.sh'

### SV proj 4
#alias backup='rsync -av -e "ssh -p 8024" user@localhost:/home/user/ ~/Documents/School/current-projects/software-vulnerability/project'
