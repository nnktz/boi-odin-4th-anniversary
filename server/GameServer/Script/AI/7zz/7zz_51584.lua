--???? 

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:ScreenText( "Gluttony seems to become hungry again...", 2 )
        AI:SetTimer(1,4000,1)
    end
    if nIndex == 1 then
        AI:Say("Do you have food? Gimmie!")
        AI:SetTimer(2,3000,1)
    end
    if nIndex == 2 then
        mapid = AI:GetMapID()
        x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SetEctypeVarShort( mapid, 39, 55 )
		AI:SummonMonsterByPos( 51596 , x , y )
        AI:SummonMonsterByPos( 51568 , x , y )
        AI:Exit()
    end
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	a = AI:GetArray(1)
        if a == 0 then
        	AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	AI:SetArray( 1 , 1 )
        	AI:PlayAction( "walk", 5000, 0 )
        end
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	
    	--????????
    	AI:AddSeekPos( 253 , 193 , 204 )
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 193 ) and ( PosY == 204 )) then
			AI:SetTimer(0,1000,1)
    	end
    	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	
end