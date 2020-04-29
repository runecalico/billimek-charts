#!/bin/sh
apk add --no-cache git
cd ${TMPDIR}
git clone https://github.com/ZeroQI/Hama.bundle
rm -Rf Hama.bundle/.git
if [ -e "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins/${PINAME}" ];
  then
    echo "Plex Plug-in ${PINAME} Already exists"
    if [ ! -z ${OVERWRITE_EXISTING_PLUGIN}]
      then
        rm -Rf "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins/${PINAME}"
        mv "${PINAME}" "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins"
    fi
  else
    echo "Moving Plex Plug-in ${PINAME} to Plug-ins directory"
    mv "${PINAME}" "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins"
fi