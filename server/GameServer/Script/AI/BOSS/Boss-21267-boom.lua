function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:AddSkill(2095,1)
        AI:UseSkill(2095,1)
    end
    if nIndex == 1 then
        --??
        AI:SelfMurder()
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
        AI:SetTimer(0,5000,1)
        AI:SetTimer(1,6000,1)
        --AI:ScreenText( "GUID:02706000000", 1 )
        AI:SetArray(1,1)
    end
end