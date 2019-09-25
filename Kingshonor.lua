local kingframe=CreateFrame("Frame");-- Need a frame to capture events
kingframe:RegisterEvent("CHAT_MSG_SAY");-- Register our event
kingframe:SetScript("OnEvent",function(self,event,msg)-- OnEvent handler receives event triggers
    if event=="CHAT_MSG_SAY" then-- Someone sends "hello World" in /say
        local message = strlower(msg);
        if (strfind(message, "kings") ~= nil or strfind(message, "king's") ~= nil) and (strfind(message, "honor") ~= nil or strfind(message, "honour") ~= nil) and strfind(message, "friend") ~= nil then
            PlaySoundFile("Interface\\AddOns\\Kingshonor\\552194.ogg", "Master")
        end
    end
end);