#!/bin/bash

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
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 1 Learning-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 2 Fanny-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 3 Work#1-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 4 Work#2-console"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 5 Work#3-Tmux"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 6 Local-info"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 7 Local-info"
# Назначим команды
instruct "/Sessions/1 org.kde.konsole.Session.sendText 'echo Hello, Evgeniy!'"
instruct "/Sessions/2 org.kde.konsole.Session.sendText 'cd /home/solbadguy/GIT/learning && git status'"
instruct "/Sessions/3 org.kde.konsole.Session.sendText 'ssh work#1'"
instruct "/Sessions/4 org.kde.konsole.Session.sendText 'ssh work#2'"
instruct "/Sessions/5 org.kde.konsole.Session.sendText 'ssh work#3'"
instruct "/Sessions/6 org.kde.konsole.Session.sendText 'echo test'"
instruct "/Sessions/7 org.kde.konsole.Session.sendText 'echo test'"
#tab1-2
instruct "/Sessions/8 org.kde.konsole.Session.sendText 'htop'"
instruct "/Sessions/9 org.kde.konsole.Session.sendText 'cmus'"
instruct "/Sessions/10 org.kde.konsole.Session.sendText 'newsboat -r'"
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
