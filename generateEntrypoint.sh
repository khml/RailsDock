appName="${1}"

echo '#!/bin/bash'
echo 'set -e'

echo "rm -f /${appName}/tmp/pids/server.pid"

echo 'exec "$@"'

