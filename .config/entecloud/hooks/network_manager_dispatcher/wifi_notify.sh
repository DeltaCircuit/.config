#!/bin/bash

function derive_base_name() {

  case $1 in
    FTTH1 | GNXS-2.4G | KVFTTH)
      sudo -i -u giri notify-send "Connected to Guruvayur HQ $USER"
      ;;
    "ERS MOB")
      sudo -i -u giri notify-send "Connected to ERS Main Operating Base"
      ;;
    "ERS FOB")
      sudo -i -u giri notify-send "Connected to ERS Forward Operating Base"
      ;;
    DeltaFX)
      sudo -i -u giri notify-send --urgency normal "Connected to metered network!"
      ;;
    Experionglobal)
      sudo -i -u giri notify-send --urgency critical "Connected to Work network. Careful!"
      ;;
    *)
      sudo -i -u giri notify-send --urgency critical "Attention! Connected to unidentified network location!"
      ;;
  esac
}





if [ "$2" == "connectivity-change" ]
then
  ssid=$(iwgetid -r)
  if [ -n "$ssid" ]
  then
    derive_base_name "$ssid"
  fi
fi
