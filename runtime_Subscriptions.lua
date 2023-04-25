-- Control Aliases
subscribed     = Controls.subSiteConfigToggle
send           = Controls.subSiteConfigSend
transmitId     = Controls.subSiteConfigSendID
transmitString = Controls.subSiteConfigSendString
incoming       = Controls.subSiteConfigLED
receiveId      = Controls.subSiteConfigReceiveID
receiveString  = Controls.subSiteConfigReceiveString

-- Variables
noteid         = ""

-- Functions
-- Send a notification at the specified transmit id
function Send()
  local transmit = transmitString.String
  if #transmit > 0 then
    Notifications.Publish(transmitId.String,transmit)
  end
end

-- This function is called whenever a Notification that matches the id is sent from another script
function Receive(id,data)
  receiveString.String = data
  -- Flash the incoming LED for 1 second
  incoming.Boolean = true
  Timer.CallAfter(
    function()
      incoming.Boolean = false
    end,
    1)
end

-- This function subscribes to notifications for the specified receive id
function Subscribe()
  local id = receiveId.String
  local state = subscribed.Boolean
  if state then -- subscribe when the control is toggled high
    if #id > 0 then
      noteid = Notifications.Subscribe(id,Receive)
    end
  else          -- unsubscribe when toggled low
    if noteid ~= nil then
      Notifications.Unsubscribe(noteid)
      receiveString.String = ""
    end
  end
end

-- EventHandlers
send.EventHandler       = Send
receiveId.EventHandler  = Subscribe
subscribed.EventHandler = Subscribe

-- Initialization
function Initialization()
  if #transmitId.String == 0 then transmitId.String = "Enter ID" end
  Subscribe()
end

Initialization()