#!/bin/bash
. /opt/wowstack/base/functions

print_welcome_page

exec tini -- "$@"
