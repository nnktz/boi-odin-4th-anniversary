 --//****************************  
 --//  Copyright��PERFECT WORLD  
 --//  Modified��2013.2.25  
 --//  Author���ܳ��`  
 --//  TaskName�� 32470��������2 
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
				
				AI:SetArray(1,1)
			end
	end--functionEvent_ThinkingEND
--------------------------------------------------------------------------thinking
--function Event_UpdateSeekPos(nAI,nIndex)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--		if nIndex == 1 then
--	--·��1--------
--	  AI:AddSeekPos( mapid , 176, 213 )
--		end    
--	end
------------------------------------------------------------------------
function Event_OnDead(nAI)
  local AI = GetMonsterAI(nAI)
  local mapid = AI:GetMapID()

	var = AI:GetEctypeVarShort(mapid,44)
	if var < 10 then
		PosX=AI:GetPosX()
		PosY=AI:GetPosY()
		MonsterID=32470
		Level=AI:GetEctypeVarShort(mapid,5)
		FieldLevel=AI:GetEctypeVarShort(mapid,6)
		if FieldLevel > 0 then
				AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX,PosY,0)
		else
				AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX,PosY)
		end
		var=var+1
		AI:SetEctypeVarShort(mapid,44,var)
	end
	var_line = AI:GetEctypeVarShort(mapid,0) 
	if var_line == 32 then
		stand = AI:GetEctypeVarShort(mapid,72)
		stand = stand -2
		AI:SetEctypeVarShort(mapid,72,stand)
	else
		stand = AI:GetEctypeVarShort(mapid,72)
		stand = stand -1
		AI:SetEctypeVarShort(mapid,72,stand)
	end
	
end--functiondead
--------------------------------------------------------------------------thinking