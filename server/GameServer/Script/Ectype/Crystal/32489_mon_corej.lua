--//****************************  
 --//  Copyright:PERFECT WORLD  
 --//  Modified:2013.2.25  
 --//  Author:???  
 --//  TaskName: 32489 core j 
 --//****************************  
function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--
--		if nIndex == 1 then--???1--5??????32507
--			a=AI:GetArray(3)
--			if a == 0 then
--				posx=AI:GetPosX()
--				posy=AI:GetPosY()
--				MonsterID=32507
--				AI:SummonMonsterByPos(MonsterID, posx, posy,0)
--				AI:SetArray(3,1)
--				AI:Exit()
--			end
--		end--???1--------------------end
--		
--		if nIndex == 2 then--???2--start
--			a=AI:GetArray(2)
--			if a == 0 then
--				AI:Say("2")
--				n=5-a
--				AI:Say("GUID:03980000000"..tostring(n))
--				a=a+1
--				AI:SetArray(2,a)
--			end
--		end--???2--------------------end
--			if nIndex == 3 then--???2--start
--			a=AI:GetArray(4)
--			if a <5 then
--				AI:Say("3")
--				n=4-a
--				AI:Say("GUID:03980000001"..tostring(n))
--				a=a+1
--				AI:SetArray(4,a)
--			end
--		end--???2--------------------end
			if nIndex == 1 then -----------xiaoshi
				AI:ScreenText("The power of Ice is weakening. Keep going!",2)
				var =AI:GetEctypeVarShort(mapid,72)
				var = var - 10
				AI:SetEctypeVarShort(mapid,72,var)
				AI:SelfMurder()
			end
			if nIndex ==2 then
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32523
					Level=AI:GetEctypeVarShort(mapid,5)
					FieldLevel=AI:GetEctypeVarShort(mapid,6)
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,177, 194,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,159, 220,0) 
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,188, 225,0)
					else  
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 177, 194)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 159, 220)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 188, 225)
					end
			end
--		
	end--functionEvent_OnTimerEND
--------------------------------------------------------------------------thinking
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--
--			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
-- 			varline = AI:GetEctypeVarShort(mapid,0)
-- 			if varline == 1 then
-- 			
			if a == 0 then
				id = AI:GetTargetID()
				if id > 0 then
					AI:ChangeFaction(11)
					AI:SetTimer(2,8000,10)
					AI:SetArray(1,1)
				end
			end
--		--		AI:Say("start")
--				AI:SetTimer(1,5000,1)
--				AI:SetTimer(2,100,1)
--				AI:SetTimer(3,1000,4)
--				AI:SetArray(1,1)
--			--	AI:Say("end")
--			end
--			end
--			if varline == 32 then
--			if a == 0 then
--			--	AI:Say("start")
--				AI:SetTimer(1,5000,1)
--				AI:SetArray(1,1)
--			--	AI:Say("end")
--			end
--			end
			count = AI:GetEctypeVarShort(mapid,66)
			if count == 30 then
				AI:SetTimer(1,1000,1)
				count = count+1
				AI:SetEctypeVarShort(mapid,66,count)
			end
	end--functionEvent_ThinkingEND
--
-------------------------------------------------------------------------
--
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
			varline = AI:GetEctypeVarShort(mapid,0)
 			posx=AI:GetPosX()
			posy=AI:GetPosY()
			MonsterID=32486
			AI:SummonMonsterByPos(MonsterID, 175, 204,0)
			AI:SummonMonsterByPos(MonsterID, 168, 215,0)
			AI:SummonMonsterByPos(MonsterID, 179, 219,0)

	end--functionEvent_ThinkingEND






