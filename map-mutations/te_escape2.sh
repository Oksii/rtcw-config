#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/tools.sh"

remove_spawnpoint "${1}" "team_CTF_redplayer" "360" "-5984 1880 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "270" "-5792 2016 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "360" "-5920 1880 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "270" "-5792 1944 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "360" "-5920 1808 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "90" "-5848 1656 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "270" "-5888 2016 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "90" "-5784 1656 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "90" "-5912 1656 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "60" "-5984 1656 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "35" "-5912 1736 224" || true
remove_spawnpoint "${1}" "team_CTF_redplayer" "25" "-5992 1760 224" || true