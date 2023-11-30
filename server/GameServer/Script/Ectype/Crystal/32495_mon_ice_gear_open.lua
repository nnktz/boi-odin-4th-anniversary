
-- //****************************  
-- //  Copyright£∫PERFECT WORLD  
-- //  Modified£∫2013.2.25  
-- //  Author£∫≤‹≥˛…`  
-- //  TaskName£∫ 32495big∫Æ«Ú 
-- //****************************  
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
	
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
---50	±Ìœ÷”√1

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		outvar1=AI:GetEctypeVarShort(mapid,27)
		if outvar1 == 1 then
			outvar1 = outvar1 +1
			AI:SetEctypeVarShort(mapid,27,outvar1)
			AI:Exit()
		end
		endvar=AI:GetEctypeVarShort(mapid,29)
		if endvar == 1 then
			AI:ChangeFaction(6)
		end
  end
---------------------------------------------------------------------------
