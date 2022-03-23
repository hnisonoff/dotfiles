export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-14.0.1.jdk/Contents/Home/
export PS1='\[\033[31m\]\u\[\033[00m\]  \e[34m\t\e[0m  \[\033[01;32m\]\w\[\033[00m\]\n> '
export PKG_CONFIG_PATH=/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
PATH="/Applications/Julia-1.5.app/Contents/Resources/julia/bin:/Users/hunternisonoff/anaconda3/bin:$PATH"
PATH="/global/software/sl-7.x86_64/modules/tools/git/2.11.1/bin/git:$PATH" # hack for remote git on savio
PATH="/usr/bin:$PATH"
PATH="~/bin:$PATH"
PATH="/Users/hunternisonoff/Library/Python/3.7/bin:$PATH"
alias ssh='ssh -i~/.ssh/id_rsa '
alias savio='ssh -M hunter_nisonoff@hpc.brc.berkeley.edu'

alias hpserver='ssh -X hunter_nisonoff@beef2.bair.berkeley.edu -L8084:localhost:8084 -L8083:localhost:8083 -L8082:localhost:8082 -L8080:localhost:8080'
alias ssh_lbl='ssh hnisonoff@calliope.dhcp.lbl.gov -L8085:localhost:8085'
function copy_to_lbl { rsync --progress $1 hnisonoff@calliope.dhcp.lbl.gov:~/ ; }
alias slurm_info='sacctmgr -p show associations user=hunter_nisonoff'
alias check_usage='check_usage.sh -E -u hunter_nisonoff'
alias sq='squeue -u hunter_nisonoff'

#alias llnl='ssh nisonoff@surface.llnl.gov'
alias llnl='ssh nisonoff@pascal.llnl.gov -L8079:localhost:8079'
alias lassen='ssh nisonoff@lassen.llnl.gov'
alias azure='ssh -i ~/Box\ Sync/Berkeley/BioML/azure/jointdkl_key.pem azureuser@52.191.253.107'
export CPD='rsync nisonoff@nisonoff.wks.desres.deshaw.com:'
export MASTER='/Users/hunternisonoff/Projects/DonaldLab/Entropy/VarBBPaper/Data/Loops/master/bin'
alias desmnt="sshfs -p 22 nisonoff@nisonoff.wks.desres.deshaw.com:/ ~/DESRES -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache"
alias desumt="umount ~/DESRES"
alias docsem='ssh -L 8787:localhost:8787 s48@169.229.244.220 -p 2234'
if command -v most > /dev/null 2>&1; then
	export PAGER="most"
fi
alias ec_server='ec -a "" -c'
alias pymol='/Applications/PyMOL.app/Contents/MacOS/PyMOL'
rsyncdes () { rsync -r nisonoff@nisonoff.wks.desres.deshaw.com:"$@" . ; }
function crun { make $1 && ./$1; }
#function emacs { /usr/local/opt/emacs-mac/Emacs.app/Contents/MacOS/Emacs "$@" ; }
#function emacs { /usr/local/opt/emacs-plus@27/bin/emacs "$@" ; }
function emacs { /usr/local/Cellar/emacs-mac/emacs-27.1-mac-8.0/Emacs.app/Contents/MacOS/Emacs "$@" ; }
function copy_dir { rsync --progress -r -avz $1 . ; }

function copy_ec1 { rsync -r --progress -avz -e "ssh -p 2235" hnisonoff@ec1.berkeley.edu:$1 . ; }
function copy_to_savio { scp $1 hunter_nisonoff@dtn.brc.berkeley.edu:/global/scratch/hunter_nisonoff/ ; }
function copy_dir_to_savio { rsync --progress -r -avz $1 hunter_nisonoff@dtn.brc.berkeley.edu:/global/scratch/hunter_nisonoff/ ; }
function copy_from_savio { rsync --progress hunter_nisonoff@dtn.brc.berkeley.edu:$1 . ; }
function copy_dir_from_savio { rsync -r --progress hunter_nisonoff@dtn.brc.berkeley.edu:$1 . ; }
function zip_dir { tar -cvzf $2 $1 ; }
function unzip_dir { tar -xvzf $1 ; }
function scfcluster { ssh -N -f -L localhost:8070:localhost:8070 hunter_nisonoff@radagast.berkeley.edu & ssh hunter_nisonoff@radagast.berkeley.edu ; }

function ssh_hp { ssh -N -f -L localhost:8083:localhost:8083 hunter_nisonoff@beef.bair.berkeley.edu & ssh hunter_nisonoff@beef.bair.berkeley.edu ; }
function copy_to_hp { rsync --progress $1 hunter_nisonoff@beef2.bair.berkeley.edu:/home/hunter_nisonoff ; }
function copy_dir_to_hp { rsync --progress -ravz $1 hunter_nisonoff@beef2.bair.berkeley.edu:/home/hunter_nisonoff/ ; }
function copy_from_hp { rsync --progress hunter_nisonoff@beef2.bair.berkeley.edu:$1 . ; }
function copy_dir_from_hp { rsync -r --progress hunter_nisonoff@beef2.bair.berkeley.edu:$1 . ; }
function copy_dir_to_llnl { rsync --progress -r -avz $1 nisonoff@pascal.llnl.gov:~/ ; }
function largest_files { du -hs * | sort -rh | head -10 ; }
export PATH="/Users/hunternisonoff/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/Applications/CMake.app/Contents/bin/:$PATH"
# hack for magit git
export PATH="/global/software/sl-7.x86_64/modules/tools/git/2.11.1/bin/:$PATH"
__conda_setup="$('/Users/hunternisonoff/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hunternisonoff/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/hunternisonoff/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hunternisonoff/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
#<<< conda initialize <<<
