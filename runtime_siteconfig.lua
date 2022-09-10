function siteSave()
  siteConfig = {teamupcal= Controls.TeamUpCal.String, teamupuser= Controls.TeamUpURL.String, timezone= Controls.TimeZone.String, teamupkey= Controls.TeamUpKey.String, attURL= Controls.TeamsNotificationURL.String, site= Controls.SiteCode.String, mobarourl= Controls.MobaroURL.String}
  print("Saved")
 -- print(rapidjson.encode(array))
 -- Controls.Output.String = rapidjson.encode(array)
  end
  
  siteSave()
  
  Controls.SiteSave.EventHandler = siteSave