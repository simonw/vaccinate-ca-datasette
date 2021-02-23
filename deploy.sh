#/bin/sh
datasette publish cloudrun vaccinateca.db \
    --metadata metadata.yml \
    --template-dir templates \
    --service vaccinateca \
    --install datasette-cluster-map \
    --install datasette-vega
