 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2013-5 
 --  Author:???  
 --  TaskName: ?????? 
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
		AI:SetTimer(1,20000,1)
		AI:SetArray(1,1)
	end
end--functionEvent_ThinkingEND 
function Event_OnDead(nAI) 
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		res=AI:GetEctypeVarShort(mapid,2)
		AI:SetEctypeVarShort(mapid,2,res-1)
--		AI:ScreenText("GUID:02652000000"..tostring(res).."GUID:02652000001",2)
end 
-- 
-- 
