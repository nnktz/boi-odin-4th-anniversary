
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:??? ??
--		TaskName:11901 ???
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
		
		-----------------------------------------??????start
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				rand = math.random(0,99)
				if rand < 20 then
					--2243	????
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
				end
				if rand >= 15 and rand < 30 then
					--2241	????
					AI:AddSkill(2241,1)
					AI:UseSkill(2241,1)
				end
				if rand >= 30 and rand < 50 then
					--1001	?????
					AI:AddSkill(1001,1)
					AI:UseSkill(1001,1)
				end
				if rand >= 50 and rand < 80 then
					--2368	????
					AI:AddSkill(2361,1)
					AI:UseSkill(2361,1)
				end
				if rand >= 80 and rand < 90 then
					--2368	??????
					AI:AddSkill(2368,1)
					AI:UseSkill(2368,1)
				end
				if rand >= 90 and rand < 98 then
					--2374	aoe??1?
					AI:AddSkill(2374,1)
					AI:UseSkill(2374,1)
				end
				if rand >= 98 then
					--2375	aoe??2?
					AI:AddSkill(2375,1)
					AI:UseSkill(2375,1)
				end
				
				rand2 = math.random(1,7)
				if rand2 == 1 then
					AI:Say("Out of my way!")
				end
				if rand2 == 2 then
					AI:Say("Revere me, weakling!")
				end
				if rand2 == 3 then
					AI:Say("You sad pathetic urchin, wa-ha-ha!")
				end
				if rand2 == 4 then
					AI:Say("Come at me!")
				end
				if rand2 == 5 then
					AI:Say("This is all you've got?")
				end
				if rand2 == 6 then
					AI:Say("I'm going to take back what is rightly mine!")
				end
				if rand2 == 7 then
					AI:Say("Back off!")
				end
			end
		end
		-----------------------------------------??????end

		-----------------------------------------????start
		if nIndex == 2 then
			--2361	????
			AI:AddSkill(2364,1)
			AI:UseSkill(2364,1)
		end
		-----------------------------------------????end
		
		-----------------------------------------????start
		if nIndex == 3 then
			a = AI:GetArray(3)
      HP = AI:GetHP()
      HPMAX = AI:GetHPMax()
      hppct = HP/HPMAX*1000
      hpline = 1000-a*50
--print(" | HP = "..tostring(HP).." | hppct = "..tostring(hppct).." | hpline = "..tostring(hpline).." | a = "..tostring(a))
			if hppct < hpline then
				monid = 5
				recoverHP = HPMAX / 100 * (5 + monid * 2)
				if hpline < 600 then
					AI:RestoreHPInstant(recoverHP)
				end
      	HP = AI:GetHP()
--print(" | HP = "..tostring(HP).." | recoverHP = "..tostring(recoverHP))
				Summon_monsterid_B(nAI)
				AI:AddSkill(2363,1)
				AI:UseSkill(2363,1)
				a = a + 1
				AI:SetArray(3,a)
				AI:ScreenText("Face the wrath of Hades!",2)
--print("- - - - - - - - - -")
			end
		end
		-----------------------------------------????end
		
		-----------------------------------------??start
		if nIndex == 4 then
			b = math.random(0,7)
			if b == 0 then
				AI:ScreenText("Hades: Ignorant! Foolish! Pathetic!",2)
			end
			if b == 1 then
				AI:ScreenText("Hades: This world rightly belongs to me!",2)
			end
			if b == 2 then
				AI:ScreenText("Hades: Who dares challenge the authority of the gods?!",2)
			end
			if b == 3 then
				AI:ScreenText("Hades: Pathetic worms! Not even brave enough to cry, eh?",2)
			end
			if b == 4 then
				AI:ScreenText("Hades: I'll soon see you return to me in the Underworld, but you'll be a bit more DEAD!...",2)
			end
			if b == 5 then
				AI:ScreenText("Hades: Bring all the allies you can! You mortals are mere pieces of flesh in my eyes!",2)
			end
			if b == 6 then
				AI:ScreenText("Hades: Hmph! I admire your courage, mortal. But stop wasting your time with your weapons and use what little time you have left in this world for prayer!",2)
			end
			if b == 7 then
				AI:ScreenText("Hades: Bring all the allies you can! You mortals are mere pieces of flesh in my eyes!",2)
			end
		end
		-----------------------------------------??end

		-----------------------------------------??start
		if nIndex == 5 then
			AI:ScreenText("Hades has unexpectedly left the Sea of Atlantis! The menace of the Underworld is gone, for now...",2)
			AI:Exit()
		end
		-----------------------------------------??end
		
		-----------------------------------------??start
		if nIndex == 6 then
			HPMAX = AI:GetHPMax()
			recoverHP = HPMAX / 500
			AI:RestoreHPInstant(recoverHP)
--print(" | recoverHPnormal = "..tostring(recoverHP))
		end
		-----------------------------------------??end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		if a == 0 then
			--???
			AI:SetArray(1,1)
			--??????
			AI:SetTimer(1,5000,9999)
			--????
			AI:SetTimer(2,75000,9999)
			--????-??
			AI:SetTimer(3,5000,9999)
			--??
			AI:SetTimer(4,10000,9999)
			--??
			AI:SetTimer(5,16000000,1)
			--??
			AI:SetTimer(6,5000,120)
		end
--		HP = AI:GetHP()
--		print(" | HP = "..tostring(HP))
	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		AI:Say( "You think this is over? If Odin weren't around, I could come back here any time I wished!")
		AI:ScreenText("Hades: You think this is over? If Odin weren't around, I could come back here any time I wished!",2)
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)
		AI:DelTimer(6)
	end


	function Summon_monsterid_B(nAI)
		local AI = GetMonsterAI(nAI)
		posx = AI:GetPosX()
		posy = AI:GetPosY()
		monsterid_A = 11952
		monsterid_B = 11953
		AI:SummonMonsterByPos( monsterid_A , posx , posy)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 14)
	end