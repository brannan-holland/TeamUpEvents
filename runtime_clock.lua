CLOCK = Timer.New();
CLOCK.EventHandler = function()
  clock = os.date("%I:%M %p");
  Controls.Time.String = clock
  --print(clock)
end;
CLOCK:Start(1);
