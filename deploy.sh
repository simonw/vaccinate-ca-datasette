#/bin/sh
datasette publish cloudrun vaccinateca.db \
    --metadata metadata.yml \
    --template-dir templates \
    --service vaccinateca \
    --install datasette-auth-github \
    --install datasette-cluster-map \
    --install datasette-vega \
    --plugin-secret datasette-auth-github client_secret $GITHUB_CLIENT_SECRET
