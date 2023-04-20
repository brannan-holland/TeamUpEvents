CLOCK = Timer.New();
CLOCK.EventHandler = function()
  clock = os.date("%I:%M %p");
  Controls.Time.String = clock
  CompareTimes()
  hourlyCompareTimes()
  --print(clock)
end;
CLOCK:Start(1);
