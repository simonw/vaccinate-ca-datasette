#/bin/sh
datasette publish cloudrun vaccinateca.db \
    --metadata metadata.yml \
    --template-dir templates \
    --service vaccinateca \
    --branch 726f781c50e88f557437f6490b8479c3d6fabfc2 \
    --install datasette-cluster-map \
    --install datasette-vega
