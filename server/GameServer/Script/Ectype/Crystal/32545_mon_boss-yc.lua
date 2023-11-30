---****************************  
---  Copyright£ºPERFECT WORLD  
---  Modified£º2013.2.25  
---  Author£º²Ü³þÉ`  
---  TaskName£º 32545
---****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			a = AI:GetArray(1)
 			varline = AI:GetEctypeVarShort(mapid,0)
 	
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND





