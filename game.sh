#!/bin/sh

clear

PLAYERS=$(cat ./players.csv)
PLAYER_NAMES=$(echo "$PLAYERS" | tail -n +2 | cut -d, -f1 | sort)

player_1=$(echo "$PLAYER_NAMES" | shuf -n1)

main() {
  echo "WANT TO PLAY A GAME?"
  read -p "yes or no: " want_to_play
  want_to_play=${want_to_play:-yes}

  if [ "$want_to_play" != "yes" ]; then
    exit 0
  fi

  thanks_message
  pick_player
  list_players
}

thanks_message() {
  clear
  echo "YAY! YOU'RE MY FAVORITE PLAYER."
  sleep 1
  read -p "(press any key to continue)"
}

pick_player() {
  clear
  echo "PICK A PLAYER"
  echo "$PLAYER_NAMES"
  read -p "Player Name: " player_2

  if [ "$(echo "$PLAYER_NAMES" | grep "^$player_2\$" -c)" == 0 ]; then
    pick_player
    return
  fi
}

list_players() {
  clear

  echo "PLAYER 1: $player_1"
  echo "PLAYER 2: $player_2"
}

player_stats() {
  clear
  echo "PLAYERS"
  echo "$PLAYERS" | column -ts ,
}

main
