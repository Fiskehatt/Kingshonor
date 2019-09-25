local kingframe=CreateFrame("Frame");
kingframe:RegisterEvent("CHAT_MSG_SAY");
kingframe:SetScript("OnEvent",function(self,event,msg)
    if event=="CHAT_MSG_SAY" then
        local message = strlower(msg);
        if (strfind(message, "kings") ~= nil or strfind(message, "king's") ~= nil) and (strfind(message, "honor") ~= nil or strfind(message, "honour") ~= nil) and strfind(message, "friend") ~= nil then
            PlaySoundFile("Interface\\AddOns\\Kingshonor\\552194.ogg", "Master")
        end
    end
end);
