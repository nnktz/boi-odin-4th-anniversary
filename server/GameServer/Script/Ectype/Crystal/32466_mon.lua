-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32466?? 
---- //****************************  
--??
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1
			a=AI:GetArray(1)
			AI:SetArray(1,a+1)
			if a == 1 then
				AI:ScreenText("Garnet: What of the plan?",2)
			end
			if a == 2 then
				AI:ScreenText("Servant: Your highness!",2)
			end
			if a == 3 then
				AI:ScreenText("Servant - Beryl: We have acquired a stone of Iceflame.",2)
			end
			if a == 4 then
				AI:ScreenText("Garnet: We have some guests. Take a good look...",2)
			end
			if a == 5 then
				AI:ScreenText("Servant - Spinel: Yes, master.",2)
				AI:ChangeFaction(1)
		    AI:AddSkill(2173,1)
		    AI:UseSkill(2173,1)
				AI:SetTimer(2,20000,999)
				AI:SetArray(2,1)
--				AI:DelTimer(1)
			end
			if a == 6 then
				AI:ScreenText("Garnet: Is it true that both Pyrope and Azura have been defeated?",2)
			end
			if a == 7 then
				AI:ScreenText("Servant - Opal: Yes, your highness, it is true.",2)
			end
			if a == 8 then
				AI:ScreenText("Garnet: So this is the end, then. Such a shame...",2)
			end
			if a == 9 then
				AI:ScreenText("Garnet: I have summoned the Crystal Labyrinth's Empress.",2)
			end
			if a == 10 then
				AI:ScreenText("Garnet: Poor girl, I never thought she'd really believe in all this.",2)
			end
			if a == 11 then
				AI:ScreenText("Garnet: But she may yet be of use to us.",2)
			end
			if a == 14 then
				--??ú???  89
				AI:ScreenText("Servant - Beryl: Aah!",2)
				AI:SetEctypeVarShort(mapid,89,1)
				--32538	????
		    AI:SummonMonsterByPos(32538,72,68,4)
			end
			if a == 15 then
				AI:ScreenText("Emeralda: Garnet! This is your end of your trickery!",2)
			end
			if a == 17 then
				AI:ScreenText("Servant - Opal: My Queen, please help me!",2)
				--??ú??    91
				AI:SetEctypeVarShort(mapid,91,1)
			end
			if a == 19 then
				AI:ScreenText("Emeralda: Did you really think you could trick me? You will pay for what you've done!",2)
			end
			if a == 20 then
				AI:ScreenText("Servant - Spinel: Some... something's wrong!",2)
				--??ú???  90
				AI:SetEctypeVarShort(mapid,90,1)
			end
			if a == 21 then
				AI:ScreenText("Garnet: What is this? You'll regret doing this, my dear.",2)
			end
			if a == 22 then
				AI:ScreenText("Emeralda: If I can stop you, it will all have been worth it!",2)
			end
			if a == 23 then
				AI:ScreenText("Garnet: You... you actually destroyed my barrier! You have outlived your usefulness, Emeralda! Goodbye!",2)
		    AI:AddSkill(2173,2)
		    AI:UseSkill(2173,2)
			end
			if a == 24 then
				AI:ScreenText("Emeralda: Aaah!",2)
				--???? 92
				AI:SetEctypeVarShort(mapid,92,1)
			end
			if a >= 30 then
				randombuff=math.random(1,5)
				if randombuff == 1 then
					AI:ScreenText("Garnet: And you... you will not escape, either!",2)
				elseif randombuff == 2 then
					AI:ScreenText("Garnet flies into a rage!",2)
				elseif randombuff == 3 then
					AI:ScreenText("Garnet: ...",2)
				elseif randombuff == 4 then
					AI:ScreenText("Garnet: This is but a minor stumble! My plan will still succeed! It MUST succeed!",2)
				elseif randombuff == 5 then
					AI:ScreenText("Garnet: And you... you will not escape, either!",2)
				end
			end
			

			if a >= 10 and a <= 20 then
				--????
		    AI:AddSkill(2558,1)
		    AI:UseSkill(2558,1)
			end
			if a >= 20 and a <= 30 then
				--????
		    AI:AddSkill(2558,2)
		    AI:UseSkill(2558,2)
			end
			if a >= 30 and a <= 40 then
				--????
		    AI:AddSkill(2558,3)
		    AI:UseSkill(2558,3)
			end

		end--???1

		if nIndex == 2 then--???2
			a=AI:GetArray(2)
			AI:SetArray(2,a+1)
			if a <= 20 then
				AI:GetRandTarget()
				tid=AI:GetTargetID()
				randombuff=math.random(0,1)
		    AI:AddSkill(2554+randombuff,1)
		    AI:UseSkill(2554+randombuff,1)
		    for i=1,5 do 
					tid2=AI:GetTargetID()
					if tid2 ~= tid then
			    	AI:AddSkill(2555-randombuff,1)
			    	AI:UseSkill(2555-randombuff,1)
			    	i=5
					end
				end
				AI:SummonMonsterByPos(32536,74,64,0)
				AI:SummonMonsterByPos(32537,67,82,0)
				randombuff=math.random(1,5)
				if randombuff == 1 then
					AI:Say("Taste the true power of the Iceflame Stone!")
				elseif randombuff == 2 then
					AI:Say("Find the right crystals, or death will come to you swiftly!")
				elseif randombuff == 3 then
					AI:Say("I can see right through your plans!")
				elseif randombuff == 4 then
					AI:Say("Run, run! Scatter like cockroaches, haha!")
				elseif randombuff == 5 then
					AI:Say("Let's see just how strong you are!")
				end
			end
			
			
		end--???2
		
		if nIndex == 3 then--???3
			a=AI:GetArray(3)
			randombuff=math.random(1,5)
			if randombuff == 1 then
			    	AI:AddSkill(2239,1)
			    	AI:UseSkill(2239,1)
			end
			if randombuff == 2 then
			    	AI:AddSkill(2240,1)
			    	AI:UseSkill(2240,1)
			end
			if randombuff == 3 then
			    	AI:AddSkill(2241,1)
			    	AI:UseSkill(2241,1)
			end
			if randombuff == 4 then
			    	AI:AddSkill(2242,1)
			    	AI:UseSkill(2242,1)
			end
			AI:SetArray(3,a)
		end--???3
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(3,7500,99)
				AI:SetTimer(1,5500,99)
				AI:SetArray(1,1)
				AI:ChangeFaction(11)
		    AI:SetArray(9,0)
			end
		hpline = AI:GetArray(10)
		if hppct < 90-hpline*10 then
			rhp = hpmax/100*(100-hpline*10)-hpn
			AI:RestoreHPInstant(rhp)
			hpline=hpline+1
			AI:SetArray(10,hpline)
			AI:AddSkill(2556,1+math.floor(hpline/2))
			AI:UseSkill(2556,1+math.floor(hpline/2))
		end
--			a = AI:GetArray(2)
--			if a == 0 then
--				AI:SetTimer(2,5000,9999)
--				AI:SetArray(2,1)
--			end
			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		AI:Say("How... how could this have happened?!")
		AI:ScreenText("Garnet: How... how could this have happened?!",2)
		AI:DelTimer(1)
		AI:DelTimer(2)
--32545	????
		AI:SummonMonsterByPos(32545,65,70,0)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end


	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then
--			xx=0
--			yy=0
--			AI:AddSeekPos(mapid,xx,yy)
--		end

	end