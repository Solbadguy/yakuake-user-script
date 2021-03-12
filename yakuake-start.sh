#!/bin/bash

function instruct {
cmd="qdbus org.kde.yakuake $1"
eval $cmd &> /dev/null
sleep 0.5
}

# Создадим 4-ре вкладки
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"
instruct "/yakuake/sessions org.kde.yakuake.addSession"

# Переименуем вкладки
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 0 LOCAL"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 1 Learning"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 2 Work-term"
instruct "/yakuake/tabs org.kde.yakuake.setTabTitle 3 Work-Tmux"

# Назначим команды
instruct "/Sessions/1 org.kde.konsole.Session.sendText 'echo Hello, Evgeniy!'"
instruct "/Sessions/2 org.kde.konsole.Session.sendText 'cd /home/solbadguy/GIT/learning'"
instruct "/Sessions/3 org.kde.konsole.Session.sendText 'ssh mywork'"
instruct "/Sessions/4 org.kde.konsole.Session.sendText 'tmux attach -t session1'"

# Выполняем команды
instruct "/Sessions/1 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/2 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/3 org.kde.konsole.Session.sendText \$'\n'"
instruct "/Sessions/4 org.kde.konsole.Session.sendText \$'\n'"

# Удаляем лишнюю вкладку
instruct "/yakuake/sessions org.kde.yakuake.removeSession 4"
