#!/bin/sh
if [ -e "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins/${PINAME}" ];
  then
    echo "Plex Plug-in ${PINAME} Already exists"
    if [ ! -z ${OVERWRITE_EXISTING_PLUGIN}]
      then
        echo "Download WebTools"
        cd "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins/"
        wget -O "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins/WebTools.bundle.zip" https://github.com/ukdtom/WebTools.bundle/releases/download/3.0.0/WebTools.bundle.zip
        rm -Rf "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins/${PINAME}"
        unzip WebTools.bundle.zip
        rm WebTools.bundle.zip
    fi
  else
        echo "Download WebTools"
        cd "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins/"
        wget -O "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins/WebTools.bundle.zip" https://github.com/ukdtom/WebTools.bundle/releases/download/3.0.0/WebTools.bundle.zip
        unzip WebTools.bundle.zip
        rm WebTools.bundle.zip
fi
chown -R 1000:1000 "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Plug-ins"