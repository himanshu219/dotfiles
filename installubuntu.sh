gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
#enable recursive search
gsettings set org.gnome.nautilus.preferences enable-interactive-search false
#show username on panel
gsettings set com.canonical.indicator.session show-real-name-on-panel true
#diaable guest
sudo sh -c "echo 'allow-guest=false' >> /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf"

sudo add-apt-repository ppa:moka/daily
sudo apt-get install moka-icon-theme

#appearance behaviour menu always window title bar
#privacy do not share and off online search results

sudo apt-get install gparted
sudo apt-get install build-dep build-essential
sudo apt-get install default-jre default-jdk
sudo apt-get install git
sudo apt-get install mysql-server
sudo apt-get install memcached
sudo apt-get install redis-server
sudo apt-get install mysql
sudo apt-get install vim
sudo apt install unity-tweak-tool
sudo apt-get install everpad
sudo apt-get install wine

#setting up python
 sudo apt-get install python-pip
 sudo pip install virtualenv
 sudo pip install virtualenvwrapper #if you don' t use sudo pip will install packages in .local
 sudo apt-get install ipython
#in bashrc
 export WORKON_HOME=~/.virtualenvs
 source /home/darknight/.local/bin/virtualenvwrapper.sh
 export PIP_VIRTUALENV_BASE=~/.virtualenvs

sudo apt-get install bleachbit
sudo apt install libavcodec-extra
sudo apt install icedtea-8-plugin
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
sudo apt-get install tp-smapi-dkms acpi-call-tools #for battery thresholds
sudo apt-get install iptux
sudo apt-get install vlc
sudo apt-get install playonlinux

#diable middle click
#https://app.assembla.com/spaces/slipstream/wiki/Disabling_GTK's_middle_mouse_button_functionality

# Decrease swap usage to a more reasonable level
#gksudo leafpad /etc/sysctl.conf
#vm.swappiness=10


#enable freeze shortcut
#gksudo leafpad /etc/default/keyboard
#XKBOPTIONS="terminate:ctrl_alt_bksp"

#starup application disable touch pad while typing
#syndaemon -i 1.0 -K -R -t

#tame the inode cache
#gksudo leafpad /etc/sysctl.conf
vm.vfs_cache_pressure=5

#disable power mgmt wifi

#sudo vim /etc/init.d/rc
#CONCURRENCY=makefile

#arc theme
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update && sudo apt-get install arc-theme
#https://help.ubuntu.com/community/CustomizingBashPrompt
#mount /home
#https://help.ubuntu.com/community/Partitioning/Home/Moving

cd /usr/share/dbus-1/services
sudo ln -snf /dev/null  org.gnome.evolution.dataserver.AddressBook.service  
sudo ln -snf /dev/null  org.gnome.evolution.dataserver.Calendar.service 
sudo ln -snf /dev/null  org.gnome.evolution.dataserver.Sources.service 
sudo ln -snf /dev/null  org.gnome.evolution.dataserver.UserPrompter.service 

#git bash completiong
#https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
#add in bashrc source ~/git-completion.bash
#ssh server

sudo apt-get install openssh-server openssh-client
#installing gist with paste utility
sudo apt-get install gist libapp-nopaste-perl

sudo apt-get purge firefox*
sudo apt-get purge thunderbird*

#remove unnecessary tty
sudo vim /etc/default/console-setup
Edit: ACTIVE_CONSOLES=”/dev/tty[1-3]“

Note: goto /etc/init/ and change the tty’s files that you DO NOT want. Edit them and comment lines starting with “start on runlevel”. So, in this case, you’ll comment the start line in "tty4.conf" to "tty6.conf" files.

#decrease grub timeout
sudo -i gedit /etc/default/grub
edit the "GRUB_TIMEOUT" line, and run sudo update-grub

#disable startup programs
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop #for displaying hiddenones

