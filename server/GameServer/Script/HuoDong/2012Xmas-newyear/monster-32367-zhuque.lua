----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				AI:Say("Starts!")
				AI:UpdateSeekPath(1)
			end
		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 1 then
				randombuff=math.random(1,2)
				if randombuff == 1 then
					randombuff=math.random(1,8)
					AI:AddSkill(2528,randombuff)
					AI:UseSkill(2528,randombuff)
--					print("GUID:04998000001"..randombuff)
--					AI:Say("GUID:04998000002"..randombuff)
					sayshit_A(AI,randombuff)
				else
					randombuff=math.random(1,8)
					AI:AddSkill(2529,randombuff)
					AI:UseSkill(2529,randombuff)
--					print("GUID:04998000003"..randombuff)
--					AI:Say("GUID:04998000004"..randombuff)
					sayshit_B(AI,randombuff)
				end
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
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
			end
			a = AI:GetArray(2)
			if a == 0 then
				randomtime=math.random(1750,3250)
				AI:SetTimer(2,randomtime,9999)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 186) and ( PosY == 140 )) then
			isover=AI:GetServerValue(299)
			if isover == 1 then
				AI:SetServerValue(299,4)
				AI:Say("Conqueror is here! It is the first one!")
				AI:ScreenText("Conqueror is the champion of the Happy Run Event!",2)
			else
				AI:Say("Conqueror is here!")
			end
			AI:DelTimer(1)
			AI:DelTimer(2)
			AI:SelfMurder()
			AI:Exit()
		end

	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--144
--142
--140
--138
--127-186
		if nIndex == 1 then
			xx,yy=186,140
			AI:AddSeekPos(mapid,xx,yy)
		end

	end
	
	
	function sayshit_A(AI,randombuff)
		
		issay=math.random(1,2)
		if issay == 1 then
			if randombuff >= 1 and randombuff <= 3 then
				AI:Say("It's too slow!")
			end
			if randombuff >= 4 and randombuff <= 6 then
				AI:Say("No one can be faster than me!")
			end
			if randombuff >= 7 and randombuff <= 8 then
				AI:Say("I'll go first!")
			end
		end
		
	end
	
	
	function sayshit_B(AI,randombuff)
		
		issay=math.random(1,2)
		if issay == 1 then
			if randombuff >= 1 and randombuff <= 3 then
				AI:Say("Come on! Come on!")
			end
			if randombuff >= 4 and randombuff <= 6 then
				AI:Say("Don't let them pass you!")
			end
			if randombuff >= 7 and randombuff <= 8 then
				AI:Say("Too hot!")
			end
		end
		
	end