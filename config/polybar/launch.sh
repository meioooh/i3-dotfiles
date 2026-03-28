#!/bin/bash

# Завершаем все старые процессы polybar
killall -q polybar

# Ждем полного завершения процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запускаем polybar. Название "mybar" должно совпадать с названием бара в config.ini
polybar

echo "Polybar запущена..."
