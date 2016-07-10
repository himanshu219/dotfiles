alias cleanall='sudo apt-get autoremove && sudo apt-get clean all && sudo apt-get autoclean all'

dict() {
    db='gcide'
    while getopts "ht" opt; do
    	case "$opt" in
    	h)
            db='fd-eng-hin'
        ;;
    	t)  db='moby-thesaurus'
        ;;
    	esac
    done
    curl dict://dict.org/d:$1:$db    
}
alias word=dict
nl() {
    git log --author="himanshu" --pretty=tformat: --numstat | awk \'{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }\' -
}
alias clines=nl


alias filesize='du -sk * | sort -rn'
cricketscore() {

    curl http://static.cricinfo.com/rss/livescores.xml | sed -n -e '12,/Australia/p' | awk '{print $2}'

}
alias score=cricketscore
alias modem="sudo usb_modeswitch -v 12d1 -p 1505 -M '55534243123456780000000000000011062000000100000000000000000000'"
alias fsize="du -s * | sort -nr | awk \'{SUM += $1} END {print SUM/1024/1024}\'"

alias clean="sudo apt-get clean && sudo apt-get autoclean && sudo apt-get autoremove"
