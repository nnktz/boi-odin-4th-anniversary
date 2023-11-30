	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-12106.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Blade of Terror~~",2)
      	AI:AddSkill(2577,1)
      	AI:UseSkill(2577,1)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Nobody can escape my blade!",2)
      	x = AI:GetPosX()
      	y = AI:GetPosY()
      	AI:SummonMonsterByPos(12107,x+4,y+4)
      	AI:SummonMonsterByPos(12107,x+4,y-4)
      	AI:SummonMonsterByPos(12107,x,y+4)
      	AI:SummonMonsterByPos(12107,x,y-4)
      	AI:SummonMonsterByPos(12107,x+4,y)
      	AI:SummonMonsterByPos(12107,x-4,y)
      	AI:SummonMonsterByPos(12107,x-4,y-4)
      	AI:SummonMonsterByPos(12107,x-4,y+4)
      	AI:SummonMonsterByPos(12107,x+8,y+8)
      	AI:SummonMonsterByPos(12107,x+8,y-8)
      	AI:SummonMonsterByPos(12107,x,y+8)
      	AI:SummonMonsterByPos(12107,x,y-8)
      	AI:SummonMonsterByPos(12107,x+8,y)
      	AI:SummonMonsterByPos(12107,x-8,y)
      	AI:SummonMonsterByPos(12107,x-8,y-8)
      	AI:SummonMonsterByPos(12107,x-8,y+8)
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
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:Say("The blade hasn't drank blood for a long time! You are here, great, haha!")
						AI:ScreenText("The blade hasn't drank blood for a long time! You are here, great, haha!",2)
						AI:SetTimer(0,40000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.6 then
						AI:Say("Come on! Taste the real Edge of Rebellion!")
						AI:ScreenText("Come on! Taste the real Edge of Rebellion!",2)
						AI:SetTimer(1,35000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.2 then
						AI:Say("You made me annoyed! Go to hell, stupid humans!")
						AI:ScreenText("You made me annoyed! Go to hell, stupid humans!",2)
						AI:AddSkill(2577,1)
						AI:UseSkill(2577,1)
						AI:AddSkill(2579,1)
						AI:UseSkill(2579,1)
						AI:SetArray(1,3)
					end
				end
			end
																						
	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		AI:ScreenText("How... is this... possible~~~~",2)
		
	end