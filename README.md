# RTCW Server Configurations

This repository exists to provide changing configuration to `msh100/rtcw`.

The objective is to allow this repository to be cloned, altered, and utilised
within the `msh100/rtcw` image without changing the image itself.

Upon launch, the mentioned Docker image will try to pull from this repository
or which ever is specified in the `SETTINGSURL` variable.


## Structure

 * `server.cfg` - The server.cfg template, this will be copied and variables
   will be dropped into place.
 * `configs/*.config` - RtcwPro configs, these will simply be copied into place.
 * `map-mutations/*.sh` - Map mutation scripts.
   Refer to the `README` within `map-mutations`.
 * `mapscripts/*.script` - Mapscripts, these will simply be copied into place.


## Changes

Changes to this repository must be approved by the European RTCW gather
administrators.
