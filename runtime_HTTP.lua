function Upload()

  HttpClient.Download { Url = "https://api.teamup.com/"..siteConfig.teamupuser.."/events?subcalendarId[]="..siteConfig.teamupcal, Headers = { ["Teamup-Token"] = siteConfig.teamupkey } , Timeout = 30, EventHandler = done }
  
end
  
function statusChange(status, HTTPcode)
  if HTTPcode == 200 -- OK
    then status.Value = 0
  end
  if HTTPcode == 0 -- Bad URL/Timeout
    then status.Value = 2
  end
  if HTTPcode == 400 -- Invalid Response
    then status.Value = 1
  end
  if HTTPcode == 404 -- Not found
    then status.Value = 2
  end
  if HTTPcode == 403 -- Authentication Error
    then status.Value = 2
  end
  if HTTPcode == 410 -- Channel is archived
    then status.Value = 2
  end
  if HTTPcode == 500 -- Server error, not your problem
    then status.Value = 2
  end
end


function done(tbl, code, data, err, headers)
  print("Cal: "..siteConfig.teamupcal)
  print("Key: "..siteConfig.teamupkey)
  print("User: "..siteConfig.teamupuser)
  print(string.format( "HTTP response from '%s': Return Code=%i; Error=%s", tbl.Url, code, err or "None" ) )
  --statusChange(status, code)
  if code == 200 then   
    data_tbl = rapidjson.decode(data)
    print(data)

    for i,v in pairs(data_tbl.events) do
      Controls.EventOpen[i].String = (date(v.start_dt) - date(siteConfig.timezone)):fmt("%I:%M %p")
      Controls.EventClose[i].String = (date(v.end_dt) - date(siteConfig.timezone)):fmt("%I:%M %p")
      Controls.EventName[i].String = v.title
      Controls.EventType[i].String = v.custom.event_type[1]
    end
  if code == 404 then
    print("Cal: "..siteConfig.teamupcal)
    print("Key: "..siteConfig.teamupkey)
    print("User: "..siteConfig.teamupuser)
  end
  end
end

Upload()
Controls.Run.EventHandler = Upload