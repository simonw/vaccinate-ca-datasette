#/bin/sh
curl -s 'https://api.vaccinateca.com/v1/counties.json' | \
    flatten-single-item-arrays - | \
    jq .content | sqlite-utils insert vaccinateca.db counties - --pk id
curl -s 'https://api.vaccinateca.com/v1/locations.json' | \
    flatten-single-item-arrays - | \
    jq .content | sqlite-utils insert vaccinateca.db locations - --pk id
curl -s 'https://api.vaccinateca.com/v1/providers.json' | \
    flatten-single-item-arrays - | \
    jq .content | sqlite-utils insert vaccinateca.db providers - --pk id
