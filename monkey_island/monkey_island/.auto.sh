#ls | grep -q labirinto && echo "Attenzione! Non barare..." && sleep 2 && cd -
ls | grep -q labirinto && echo "Attenzione! Non barare...\nStai cercando di uscire dal labirinto da dove sei entrato!" && sleep 2 && cd - &> /dev/null
