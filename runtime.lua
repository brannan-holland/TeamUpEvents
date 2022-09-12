status = Controls.status
rapidjson = require("rapidjson")
date = require("date")

ctrlEvents = #Controls.EventName
noEvents = {}
eventChoices = {}
for i=1, ctrlEvents do
  noEvents[i] = "Event "..i
  eventChoices[i] = "Event "..i

end


print(noEvents)

--[[ #include "runtime_clock.lua" ]]
--[[ #include "runtime_siteconfig.lua" ]]
--[[ #include "runtime_HTTP.lua" ]]

--[[ #include "runtime_trigger.lua" ]]


