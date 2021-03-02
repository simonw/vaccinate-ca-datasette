#/bin/sh
curl -s 'https://api.vaccinateca.com/v1/counties.json' | \
    jq .content | \
    flatten-single-item-arrays - | \
    sqlite-utils insert vaccinateca.db counties - --pk id
curl -s 'https://api.vaccinateca.com/v1/locations.json' | \
    jq .content | \
    flatten-single-item-arrays - | \
    sqlite-utils insert vaccinateca.db locations - --pk id
curl -s 'https://api.vaccinateca.com/v1/providers.json' | \
    jq .content | \
    flatten-single-item-arrays - | \
    sqlite-utils insert vaccinateca.db providers - --pk id
