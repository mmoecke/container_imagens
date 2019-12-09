#!/bin/sh

set -e

sh -c '/etc/init.d/start.services'

exec "$@"
