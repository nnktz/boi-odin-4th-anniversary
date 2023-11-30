---****************************  
---  Copyright:PERFECT WORLD  
---  Modified:2013.2.25  
---  Author:???  
---  TaskName: 32487-????-?
---****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--5??????32525
			a=AI:GetArray(3)
			if a == 0 then
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				MonsterID=32485
				AI:SummonMonsterByPos(MonsterID, PosX, PosY,0)
				AI:Exit()
			end
		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 0 then
				n=5-a
				AI:Say("Key Crystal will open in: "..tostring(n))
				a=a+1
				AI:SetArray(2,a)
			end
		end--???2--------------------end
			if nIndex == 3 then--???2--start
			a=AI:GetArray(4)
			if a <5 then
				n=4-a
				AI:Say("Key Crystal will open in: "..tostring(n))
				a=a+1 
				AI:SetArray(4,a)
			end
		end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,5000,1)
				AI:SetTimer(2,100,1)
				AI:SetTimer(3,1000,4)
				AI:SetArray(1,1)
			end
			----------------------------------------------------------normal end
			--?????
		--opentask=AI:GetEctypeVarShort(mapid,10)
		--isdoing=AI:GetEctypeVarShort(mapid,17)
		--if isdoing == 1 then
		--	maxtime=55
		--	AI:SetArray(7,maxtime)
		--	AI:SetEctypeVarShort(mapid,17,2)
		--end
		--if isdoing == 2 then
		--	lefttime=AI:GetArray(7)
--va--=AI:GetEctypeVarShort(mapid,10)
--va--=AI:GetEctypeVarShort(mapid,13)
--va--=AI:GetEctypeVarShort(mapid,14)
--va--=AI:GetEctypeVarShort(mapid,15)
--pr--t("|lefttime="..lefttime.."|var1="..var1.."|var2="..var2.."|var3="..var3.."|var4="..var4)
		--	lefttime=lefttime-1
		--	if lefttime >= 0 then
		--		add=math.floor(lefttime*5/maxtime)
		--		bar="GUID:03979000002"..string.rep("GUID:03979000003",add)..string.rep("GUID:03979000004",5-add)
		--		AI:ScreenText(bar,2)
		--	end
		--	if lefttime == 0 then
		--		AI:ScreenText("GUID:03979000005",2)
		--		AI:SetEctypeVarShort(mapid,10,0)
		--		AI:SetEctypeVarShort(mapid,13,0)
		--		AI:SetEctypeVarShort(mapid,14,0)
		--		AI:SetEctypeVarShort(mapid,15,0)
		--		AI:SetEctypeVarShort(mapid,17,0)
		--	end
    --
		--	AI:SetArray(7,lefttime)
		--end
		--if opentask == 3 then
		--	AI:ScreenText("GUID:03979000006",2)
		--	AI:SetEctypeVarShort(mapid,10,0)
		--	AI:SetEctypeVarShort(mapid,13,0)
		--	AI:SetEctypeVarShort(mapid,14,0)
		--	AI:SetEctypeVarShort(mapid,15,0)
		--	AI:SetEctypeVarShort(mapid,17,0)
		--end



	end--functionEvent_ThinkingEND





