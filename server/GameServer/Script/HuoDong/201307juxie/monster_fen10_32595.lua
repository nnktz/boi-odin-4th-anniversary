 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2013.5.8 
 --  Author:??? 
 --  TaskName: 32595 
 ------------------------------ 
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:AddSkill(2351,1)
				AI:UseSkill(2351,1)
			end
			
			if nIndex == 1 then
				AI:GetRandTarget()
				AI:AddSkill(2352,1)
				AI:UseSkill(2352,1)
			end
			if nIndex == 4 then--???4----------------30???????
			a=AI:GetArray(3)
			if a<30 then
				a=a+1
				AI:SetArray(3,a)
				if a== 27 then
					AI:ScreenText("Phantom:Hahaha! You can't defeat me!",2)
				end
			end
			if a==30 then
					AI:ScreenText("The phantom split into 6 and appeared in the 6 places of the map! Go and kill them!",2)
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
		    	MonsterID1 = 32595
		    	posx1=PosX + 30
					posx2=PosX - 30
					posx3=PosX + 15
					posx4=PosX
					posx5=PosX
					posx6=PosX - 15
					posy1=PosY
					posy2=PosY
					posy3=PosY + 15
					posy4=PosY + 30
					posy5=PosY - 30
					posy6=PosY -15
		
				AI:SummonMonsterByPos(MonsterID1,posx1,posy1,0)
				AI:SummonMonsterByPos(MonsterID1,posx2,posy2,0)
				AI:SummonMonsterByPos(MonsterID1,posx3,posy3,0)
				AI:SummonMonsterByPos(MonsterID1,posx4,posy4,0)
				AI:SummonMonsterByPos(MonsterID1,posx5,posy5,0)
				AI:SummonMonsterByPos(MonsterID1,posx6,posy6,0)
				a=a+1
				AI:SetArray(3,a)
				AI:Exit()
			end
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
			if t == false then
						if a > 0 then
							if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    			--	AI:DelTimer(4)
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:Say("Who dares enter the Titan Estate?")
						AI:AddSkill(2351,1)
						AI:UseSkill(2351,1)
						AI:SetTimer(0,20000,65535)
					--	AI:SetTimer(4,1000,40)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.6 then
						AI:Say("Go to hell, stupid human!")
						AI:GetRandTarget()
						AI:AddSkill(2352,1)
						AI:UseSkill(2352,1)
						AI:SetTimer(1,20000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.2 then
						AI:Say("Feel my true power!")
						AI:AddSkill(2353,1)
						AI:UseSkill(2353,1)
						AI:SetArray(1,3)
					end
				end
			end
		end
						
			
function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()  
    	posx=AI:GetPosX()
			posy=AI:GetPosY()
    	monsterid_B = 32580
		AI:ScreenText("The Phantom is broken, a Phantom Chest appears!",1)    
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
	
			
	end--functionEvent_ThinkingEND
