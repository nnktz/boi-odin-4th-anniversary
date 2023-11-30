 --//****************************  
 --//  Copyright£ºPERFECT WORLD  
 --//  Modified£º2013.2.25  
 --//  Author£º²Ü³þÉ`  
 --//  TaskName£º 32523º®shouwei -jjjj
 --//****************************  
function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end--functionEvent_OnTimerEND
--------------------------------------------------------------------------thinking
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--print("1")
--			-----------------------------------------------------------normal start
			a = AI:GetArray(1)
						
			if a == 0 then
				AI:UpdateSeekPath(1)
				AI:SetArray(1,1)
			end
	end--functionEvent_ThinkingEND
--------------------------------------------------------------------------thinking
function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then
	--Â·Ïß1--------
	  AI:AddSeekPos( mapid , 176, 213 )
		end    
	end
------------------------------------------------------------------------
function Event_OnDead(nAI)
  local AI = GetMonsterAI(nAI)
  local mapid = AI:GetMapID()

	var = AI:GetEctypeVarShort(mapid,66)
	var = var +1
	AI:SetEctypeVarShort(mapid,66,var)
	stand = AI:GetEctypeVarShort(mapid,72)
	stand = stand -1
	AI:SetEctypeVarShort(mapid,72,stand)
	
end--functiondead
--------------------------------------------------------------------------thinking