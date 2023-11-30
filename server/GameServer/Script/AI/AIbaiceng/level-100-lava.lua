 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2013-5 
 --  Author:???  
 --  TaskName: ???? 
 ------------------------------ 
function Event_OnTimer( nAI, nIndex, nCount) 
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
	if nIndex == 1 then
		AI:Exit()
	end
	if nIndex == 2 then
		AI:Exit()
	end
end--functionEvent_OnTimerEND 

function Event_Thinking(nAI) 
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
	
 	a = AI:GetArray(1)
	if a == 0 then
		AI:SetTimer(1,25000,1)
		AI:SetArray(1,1)
	end
 	a = AI:GetArray(2)
	if a >= 20 then
		if a < 100 then
			pid = AI:GetEctypeVarInteger(mapid,110)
			Distance = AI:GetDistance(pid)
	--		print("|Distance="..Distance)
			if Distance < 8 then
				AI:GetRandTarget()
		--		2588	????
				AI:AddSkill(2588,1)
				AI:UseSkill(2588,1)
				AI:SetTimer(2,1000,1)
				AI:SetArray(2,100)
				AI:Say("!")
			end
		end
	else
		AI:SetArray(2,a+1)
--		AI:Say("--"..tostring(a+1))
	end
	
end--functionEvent_ThinkingEND 

function Event_OnDead(nAI) 
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
end 


