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

table.insert(eventChoices, "Last Event")

print(noEvents)

--[[ #include "runtime_clock.lua" ]]
--[[ #include "runtime_siteconfig.lua" ]]
--[[ #include "runtime_HTTP.lua" ]]

--[[ #include "runtime_trigger.lua" ]]
--[[ #include "runtime_hourlytrigger.lua" ]]
--[[ #include "runtime_Subscriptions.lua" ]]


