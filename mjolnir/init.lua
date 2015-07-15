local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local spotify     = require "mjolnir.lb.spotify"
local audiodevice = require "mjolnir._asm.sys.audiodevice"

-- Set up hotkey combinations
local mash      = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "shift"}

-- Spotify hotkeys
hotkey.bind(mashshift, 'space', spotify.displayCurrentTrack)
hotkey.bind(mashshift, 'P',     spotify.play)
hotkey.bind(mashshift, 'O',     spotify.pause)
hotkey.bind(mashshift, 'N',     spotify.next)
hotkey.bind(mashshift, 'I',     spotify.previous)
hotkey.bind(mashshift, ']', function() audiodevice.defaultoutputdevice():setvolume(audiodevice.current().volume + 5) end)
hotkey.bind(mashshift, '[', function() audiodevice.defaultoutputdevice():setvolume(audiodevice.current().volume - 5) end)
