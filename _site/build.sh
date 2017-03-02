#!/bin/sh

echo '### Interpolating Variables ###'
sed -i 's/LETITGO_CONTENTFUL_PREVIEW_TOKEN/'"$LETITGO_CONTENTFUL_PREVIEW_TOKEN"'/g' _config.yml 
sed -i 's/LETITGO_CONTENTFUL_ACCESS_TOKEN/'"$LETITGO_CONTENTFUL_ACCESS_TOKEN"'/g' _config.yml 
sed -i 's/LETITGO_CONTENTFUL_SPACE_ID/'"$LETITGO_CONTENTFUL_SPACE_ID"'/g' _config.yml 
echo '### Fetching content & Building site ###'
jekyll contentful --rebuild
echo '### DONE ###'
echo '### Removing Variables from config file ###'
echo '### DONE ###'
