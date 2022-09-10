CLOCK = Timer.New()
CLOCK.EventHandler = function()
    clock = os.date("%I:%M %p")
end
CLOCK:Start(1);