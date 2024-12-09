# RTCW Map Mutations

Map mutations are scripts that run against map BSPs in order to make server
side alterations.

As of the time of writing this README there are two reasons we do this.
We remove all exploding barells and we remove some spawn points.

Two ways exist to make mutations:


## Per Map

Some maps need alterations made only to them and no others.
Here we use this to remove spawn points (check ice and escape).

These scripts need to be named in a specific way.
They must be named the same as the map followed by `.sh`, for example
`te_escape2.sh`.

The path of the maps BSP will be passed as the first and only positional
argument.

You must write changes to this path.


## Global

In other cases you may want to make the same patches to every possible map.
In this repository we do this for the "barrel fix" to remove all exploding
barrels from all maps.

This script must be called `global.sh`.

The global mutation script will be provided two positional arguments, the
first for the source of the BSP, the second being the destination.
The destination is where you must place the BSP if you make any changes since
there may be cases where the global mutation script doesn't need to change a
map.
