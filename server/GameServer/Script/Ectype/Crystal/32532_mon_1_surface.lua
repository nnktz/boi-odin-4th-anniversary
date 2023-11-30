-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32532???? 
-- //****************************  


	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 0 then--???-0-
			a=AI:GetArray(1)
			if a == 0 then
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				n1=AI:GetEctypeVarShort(mapid,50)
				if n1 ==4 then----------------????
					AI:Say("Go to hell!")
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32524
					Level=AI:GetEctypeVarShort(mapid,5)
					FieldLevel=AI:GetEctypeVarShort(mapid,6)
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,266,FieldLevel,1,mapid,PosX,PosY,0)
					else
						AI:SummonLevelMonsterByPos(MonsterID, 266, Level, PosX,PosY)
					end
					AI:SetArray(1,1)
			--		AI:SetEctypeVarShort(mapid,50,5)
					AI:Exit()
				end
				var_line = AI:GetEctypeVarShort(mapid,0)
				if var_line == 31 then
					AI:Say("Go to hell!")
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32524
					Level=AI:GetEctypeVarShort(mapid,5)
					FieldLevel=AI:GetEctypeVarShort(mapid,6)
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX,PosY,0)
					else
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX,PosY)
					end
			--		AI:SetEctypeVarShort(mapid,50,5)
					AI:Exit()
				end
				if var_line == 32 then
					AI:Say("Go to hell!")
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32524
					Level=AI:GetEctypeVarShort(mapid,5)
					FieldLevel=AI:GetEctypeVarShort(mapid,6)
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,257,FieldLevel,1,mapid,PosX,PosY,0)
					else
						AI:SummonLevelMonsterByPos(MonsterID, 257, Level, PosX,PosY)
					end
			--		AI:SetEctypeVarShort(mapid,50,5)
					AI:Exit()
				end
	
			end
		end--???0--------------------end
	
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
---50	???1

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 
			
			AI:SetTimer(0,1000,999)
			AI:SetArray (3, 1)
      end
      
      
    end
---------------------------------------------------------------------------

