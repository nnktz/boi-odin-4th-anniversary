function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:SelfMurder()
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)

t = AI:HaveAttackTarget()
    if t == false then
        a = AI:GetArray(0)
        --15�����ʧ 
        if a == 0 then
            AI:SetTimer(0,15000,1)
            AI:SetArray(0,1)
            AI:SetArray(1,0)
        end    
    end
end