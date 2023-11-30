
---  Copyright:PERFECT WORLD  
---  Modified:2013.2.25  
---  Author:???  
---  TaskName: 32503 ???????
---****************************  
--
	function Event_OnTimer( nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--
	
	end--functionEvent_OnTimerEND
--------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
--
--			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			count =AI:GetEctypeVarShort(mapid,62)
			if count == 1 then
				AI:SelfMurder()
			end
			
			if a== 0 then
				rand = math.random(1,5)
				if rand < 3 then
					AI:ChangeFaction(11)
				
				end
					AI:SetArray(1,1)
			end
			----------------------------------------------------------normal end
--
--
	end--functionEvent_ThinkingEND
----------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
--
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				MonsterID=32497
				Level=AI:GetEctypeVarShort(mapid,5)
				FieldLevel=AI:GetEctypeVarShort(mapid,6)
				if FieldLevel > 0 then
					AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX,PosY,0)
				else
					AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX,PosY)
				end
				AI:Say("At last, I am revived!")
	end--functionEvent_ThinkingEND







