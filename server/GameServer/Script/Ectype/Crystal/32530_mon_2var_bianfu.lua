---****************************  
---  Copyright£ºPERFECT WORLD  
---  Modified£º2013.2.25  
---  Author£º²Ü³þÉ`  
---  TaskName£º 32530	òùòð»¤ÎÀ 
---****************************  
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			AI:PlayEffect( "skill\\Monster\\boss\\yuanlingzhinu\\fire\\tx_yuanlingzhinu_fire.ini" )
			AI:AddSkill( 2037, 1 )
			AI:UseSkill( 2037, 1 )
   end
   		
   		
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		switch = AI:GetArray(0)
		if switch == 0	then
		
			AI:SetTimer(0,1000,99)
			AI:SetArray(0, 1 )
 		end
 	
 	  function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
			varline = AI:GetEctypeVarShort(mapid,0)
			if varline == 1 then
			stand = AI:GetEctypeVarShort(mapid,73)
			stand = stand -2
			AI:SetEctypeVarShort(mapid,73,stand)
			end
	end--fun   