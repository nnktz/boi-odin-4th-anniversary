	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53307.lua
	--		Remark:
	----------------------------------------------------
	
	-- 412 ????,??????BOSS????
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      
      	AI:ScreenText("Stupid humans! Feel the strength of Cosmos Power!",2)
      	AI:SetServerValue(412,0)
	      var = AI:GetServerValue(412)
	      while var < 7 do
	      	n1 = math.random(1,10)
	      	n2 = math.random(1,10)
	      	x = AI:GetPosX()
	      	y = AI:GetPosY()
	      	x1 = x + n1
	      	x2 = x - n1
	      	y1 = y + n2
	      	y2 = y - n2	      	
	      	AI:SummonMonsterByPos(53309,x1,y1)
	      	AI:SummonMonsterByPos(53309,x1,y2)
	      	AI:SummonMonsterByPos(53309,x2,y1)
	      	AI:SummonMonsterByPos(53309,x2,y2)
	      	var = var + 1
	      	AI:SetServerValue(412,var)
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
		    	AI:SetArray(1,0)
		    end
		  end
		else
		
			if a == 0 then
				if HP < HPMAX then
					AI:Say("Who is intruding into the Outer Starway? How dare you?")
					AI:ScreenText("Who is intruding into the Outer Starway? How dare you?",2)
					AI:SetTimer(0,15000,65535)
					AI:SetArray(1,1)
				end
			end
		end


	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		AI:ScreenText("In the map appear some Chests that the Astral Guardians left!",2)
		
		
	end