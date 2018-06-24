#!/usr/bin/env bash

# Ensure /.composer exists and is writable.
if [ -d /.composer ]; then
    mkdir /.composer
fi

chmod -R ugo+rw /.composer

# Run a command or start supervisord.
if [ $# -gt 0 ]; then
    # Command was passed, so run it.
    exec "$@"
else
    # No command passed, so run supervisord.
    /usr/bin/supervisord
fi
