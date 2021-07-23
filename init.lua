hs.hotkey.bind({"shift", "option"}, "1", function()
    -- local app = hs.application.get("kitty")
    hs.application.launchOrFocus("kitty")
	-- app:mainWindow():moveToUnit'[100,50,0,0]'
	-- app:mainWindow().setShadows(false)
end)

hs.hotkey.bind({"shift", "option"}, "2", function()
  hs.application'chrome':activate()
end)

hs.hotkey.bind({"shift", "option"}, "3", function()
  hs.application'notion':activate()
end)

config = {}
config.applications = {
  ['Kitty'] = {
    bundleID = 'net.kovidgoyal.kitty',
    hyper_key = 'j',
    preferred_display = 1,
    tags = {'#coding'}
  },
  ['Finder'] = {
    bundleID = 'com.apple.finder',
    hyper_key = 'f'
  },
}

hyper = require('hyper')
hyper.start(config)

