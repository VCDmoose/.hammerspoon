-- Open apps
hs.hotkey.bind({"alt", "ctrl"}, "T", function()
    hs.application.launchOrFocus("iTerm")
  end)


hs.hotkey.bind({"alt", "ctrl"}, "F", function()
    hs.application.launchOrFocus("Firefox")
  end)


hs.hotkey.bind({"alt", "ctrl"}, "C", function()
    hs.application.launchOrFocus("Google Chrome")
  end)

hs.hotkey.bind({"alt", "ctrl"}, "I", function()
   hs.application.launchOrFocus("IntelliJ IDEA")
end)

hs.hotkey.bind({"alt", "ctrl"}, "S", function()
   hs.application.launchOrFocus("Spotify")
end)

hs.hotkey.bind({"alt", "ctrl"}, "O", function()
   hs.application.launchOrFocus("Obsidian")
end)


-- Move mouse cursor between screens
hs.hotkey.bind({"alt", "ctrl"}, "Left", function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
hs.mouse.setAbsolutePosition(center)
end)

hs.hotkey.bind({"alt", "ctrl"}, "Right", function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
hs.mouse.setAbsolutePosition(center)
end)

-- Spoons
hs.loadSpoon("ShiftIt")
spoon.ShiftIt:bindHotkeys({})

-- Auto reload
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()


