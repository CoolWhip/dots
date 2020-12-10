#!/bin/sh

Volume() {
    VolInf="$(amixer get Master | awk -F'[][]' 'END{ print $2 }' | sed 's/on://g')"
    echo "Vol $VolInf"
}

#BcklInf() {
#    echo "Bckl $(xbacklight -get | awk '{print int($1+0.5)}' | sed 's/\..*//')%"
#}

Battery() {
    Capacity="$(cat /sys/class/power_supply/BAT0/capacity)%"
    State="$(cat /sys/class/power_supply/BAT0/status)"

    if [ "${State}" = "TRUE" ]; then
        echo 'Charging' ${Capacity}
    else
        echo 'Discharging' ${Capacity}
    fi
}

Weather() {
    echo "$(cat /home/$USER/.config/spectrwm/weather.txt)"
#    echo "$(curl -s wttr.in/-37.731665,144.995026?format='%C+%t\n')"
}

Pkgs() {
    echo "$(dpkg -l | wc -l) pkgs"
}

Update() {
    echo \
	"$(Weather) | $(Pkgs) | $(Battery) | $(Volume)" &
    wait
}

trap true USR1

while :
do
    Update;
    sleep 60 &
    wait $!
done
