#!/bin/bash
SITE_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
THEME_PATH="${SITE_PATH}/assets/themes/the-minimum"
INPUT_PATH=${THEME_PATH}/css/style.less
OUTPUT_PATH=${THEME_PATH}/css/style.css
lessc --line-numbers=comments ${INPUT_PATH} ${OUTPUT_PATH}

#TODO debug lessc instead of this script
#remove site path from output css
sed -i '' -e "s:${SITE_PATH}/::g" "${OUTPUT_PATH}"

ls -hal ${THEME_PATH}/css/style.css
