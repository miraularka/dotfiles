#!/bin/bash
#Small personalized volume control for Polybar

getsinkname() {
	pacmd stat | awk -F": " '/^Default sink name: /{print $2}'
}

getsinkvol() {
    pacmd list-sinks |
        awk '/^\s+name: /{indefault = $2 == "<'$(getsinkname)'>"}
            /^\s+volume: / && indefault {print $5; exit}'

}

getmute() {
    pacmd list-sinks |
        awk '/^\s+name: /{indefault = $2 == "<'$(getsinkname)'>"}
            /^\s+muted: / && indefault {print $2; exit}'

}

mute=$(getmute)
vol=$(getsinkvol)

if [ $mute == "no"  ]
then
	echo "%{F#fcffb8} %{F-}$vol"
elif [ $mute == "yes" ]
then
	echo "%{F#fcffb8} %{F-}$vol"
fi

