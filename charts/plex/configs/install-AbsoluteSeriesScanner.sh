#!/bin/sh
apk add --no-cache git
# cd ${TMPDIR}
# git clone https://github.com/ZeroQI/Lambda.bundle
# rm -Rf Lambda.bundle/.
if [ ! -e "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Scanners/Series" ];
  then
    mkdir -p "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Scanners/Series"

fi
if [ -e "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Scanners/Series/Absolute Series Scanner.py" ];
  then
    echo "Plex Plug-in ${PINAME} Already exists"
    if [ ! -z ${OVERWRITE_EXISTING_PLUGIN} ]
      then
        echo "Download ${PINAME}"
        wget -O "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Scanners/Series/Absolute Series Scanner.py" https://raw.githubusercontent.com/ZeroQI/Absolute-Series-Scanner/master/Scanners/Series/Absolute%20Series%20Scanner.py
    fi
  else
    echo "Download ${PINAME}"
    wget -O "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Scanners/Series/Absolute Series Scanner.py" https://raw.githubusercontent.com/ZeroQI/Absolute-Series-Scanner/master/Scanners/Series/Absolute%20Series%20Scanner.py
fi
chown -R 1000:1000 "${CONFIG_DIR}/Library/Application Support/Plex Media Server/Scanners/"