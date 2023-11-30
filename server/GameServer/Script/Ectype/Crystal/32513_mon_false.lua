
---  Copyright：PERFECT WORLD  
---  Modified：2013.2.25  
---  Author：曹楚蒨  
---  TaskName： 32513水晶阵眼-false
---****************************  
--
	function Event_OnTimer( nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--
		if nIndex == 1 then--计时器1--其他消失后消失
			a=AI:GetArray(3)
			if a == 0 then
				vars=AI:GetEctypeVarShort(mapid,58)
				if vars ~= 0 then--------------------------------刷阵眼
					vars = vars+1
					AI:SetEctypeVarShort(mapid,58,vars) 
					AI:Exit()
				end
			end
		end--计时器1--------------------end	
	end--functionEvent_OnTimerEND
--------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--
--			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,99)
				AI:SetArray(1,1)
			end
			----------------------------------------------------------normal end
--
--
	end--functionEvent_ThinkingEND





