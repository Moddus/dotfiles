#!/bin/sh

if test luarocks; then
    luarocks install mjolnir.hotkey
    luarocks install mjolnir.application
else
    echo "luarocks not found"
fi
