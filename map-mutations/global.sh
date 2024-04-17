#!/bin/bash

input="${1}"; shift
output="${1}"; shift

# If an exploding barrel gibs a player, the server will crash.
# To remedy this we remove all exploding barrels.

# We know ahead of time that most of the default maps do not contain barrels
# so let's not waste cycles on these.
default_maps_skip=(
    "mp_beach"
    "mp_castle"
    "mp_depot"
    "mp_destruction"
    "mp_sub"
    "mp_village"
    "mp_trenchtoast"
    "mp_keep"
    "mp_chateau"
    "mp_tram"
    "mp_dam"
    "mp_rocket"
    "bd_bunker_b2"
    "bp_badplace"
    "braundorf_b7"
    "castle2_b3"
    "frostafari_revamped_b3"
    "ge_tundra_b1"
    "goldrush_b2"
    "koth_base_a2"
    "mp_basement"
    "mp_ctfmultidemo"
    "mp_password2_v1"
    "mp_science"
    "mp_sub2_b1"
    "oasis_b1"
    "rocket2_b4"
    "sub2_b8"
    "te_adlernest_b1"
    "te_bremen_b1"
    "te_chateau"
    "te_cipher_b5"
    "te_delivery_b1"
    "te_escape2"
    "te_kungfugrip"
    "te_nordic_b2"
    "te_operation_b4"
    "te_radar_b1"
    "timertest6"
    "tram2"
    "ufo_homiefix"
)

map_name="${input%.bsp}"
map_name="${map_name##*/}"

for skip_map in "${default_maps_skip[@]}"; do
    if [ "${skip_map}" == "${map_name}" ]; then
        echo "Default map ${map_name} does not contain barrels, skipping..."
        exit 0
    fi
done

if grep "props_flamebarrel" "${input}"; then
    bbe -e \
        's/props_flamebarrel/props_flamebar111/' \
        "${input}" > \
        "${output}"
fi
