local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "TeamUp" then

  --[[ #include "layout_main2.lua" ]]
 
elseif CurrentPage == "About" then
  --[[ #include "layout_about.lua" ]]


elseif CurrentPage == "Site" then
  --[[ #include "layout_siteconfig.lua" ]]

elseif CurrentPage == "Daily Triggers" then
  --[[ #include "layout_trigger.lua" ]]

elseif CurrentPage == "Hourly Triggers" then
  --[[ #include "layout_hourlytrigger.lua" ]]


end