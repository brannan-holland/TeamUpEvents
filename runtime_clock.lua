CLOCK = Timer.New();
CLOCK.EventHandler = function()
  clock = os.date("%I:%M %p");
  storedTime()
  --print(clock)
end;
CLOCK:Start(1);




function storedTime()
  if Controls.Time.String ~= clock then

    print("The time is now "..clock)

    Controls.Time.String = clock
    CompareTimes()
    hourlyCompareTimes()
    
  end
end
