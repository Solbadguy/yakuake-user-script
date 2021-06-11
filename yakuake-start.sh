#!/bin/bash

#Variables
GIT="cd /home/evgeniy/Learning/GIT && git status"
VAGRANT="cd /home/evgeniy/Learning/ANSIBLE && vagrant up"
NAME=Evgeniy
PROGRAMM1=htop
PROGRAMM2="echo "Today":;curl -s wttr.in/{st-petersburg}?format=4 | cowsay"
PROGRAMM3="nesboat -r"
function instruct {
cmd="qdbus org.kde.yakuake $1"
eval $cmd &> /dev/null
sleep 1
}

# Создадим 4-ре вкладки
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSessionQuad"
# Переименуем вкладки
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 0 LOCAL-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 1 GIT-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 2 Ansible-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 3 Work#1-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 4 Work#2-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 5 Work#3-Tmux"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 6 Local-info"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 7 Local-info"
# Назначим команды
instruct "/Sessions/1 org.kde.konsole.Session.sendText 'echo Hello, $NAME! | cowsay'"
instruct "/Sessions/2 org.kde.konsole.Session.sendText '$GIT'"
instruct "/Sessions/3 org.kde.konsole.Session.sendText '$VAGRANT'"
instruct "/Sessions/4 org.kde.konsole.Session.sendText 'ssh work#1'"
instruct "/Sessions/5 org.kde.konsole.Session.sendText 'ssh work#2'"
instruct "/Sessions/6 org.kde.konsole.Session.sendText 'echo test'"
instruct "/Sessions/7 org.kde.konsole.Session.sendText 'echo test'"
#tab1-2
instruct "/Sessions/8 org.kde.konsole.Session.sendText '$PROGRAMM1'"
instruct "/Sessions/9 org.kde.konsole.Session.sendText '$PROGRAMM2'"
instruct "/Sessions/10 org.kde.konsole.Session.sendText '$PROGRAMM3'"
# Выполняем команды
instruct "/Sessions/1 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/2 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/3 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/4 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/5 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/6 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/7 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/8 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/9 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/10 org.kde.konsole.Session.sendText \$'\n'"
# Удаляем лишнюю вкладку
instruct "/yakuake/sessions org.kde.yakuake.removeSession 6"
# Делаем первую вкладку активной
#instruct "/yakuake/sessions org.kde.yakuake.raiseSession 0"
