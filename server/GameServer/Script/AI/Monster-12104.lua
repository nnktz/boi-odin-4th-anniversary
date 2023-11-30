	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-12104.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Loki: You just can't let a god rest in peace, can you?",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Loki: You there, kid. The Fates sent you here, didn't they?",2)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("Loki: Those girls have really outdone themselves, orchestrating all this.",2)
      end
      
      if nIndex == 3 then
      	AI:ScreenText("Loki: I tell you though, I'm not gonna be their puppet like you are.",2)
      end
      
      if nIndex == 4 then
      	AI:ScreenText("Loki: Dance to Verdandi's tune if you like, but take her this message.",2)
			end
			
			if nIndex == 5 then
				AI:ScreenText("Loki: And I warn you, it's for her eyes only... heh heh...",2)
			end
			
			if nIndex == 6 then
				AI:SelfMurder()
				AI:Exit()
			end
			
			if nIndex == 7 then
        --???? 
        AI:PlayEffect("common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire_1.ini")
      end  

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		
		if a == 0 then
			AI:ScreenText("Loki: What's all the racket? You could raise the dead with such commotion.",2)
			AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
			AI:SetTimer(0,4000,1)
			AI:SetTimer(1,8000,1)
			AI:SetTimer(2,12000,1)
			AI:SetTimer(3,16000,1)
			AI:SetTimer(4,20000,1)
			AI:SetTimer(5,24000,1)
			AI:SetTimer(6,28000,1)
			AI:SetTimer(7,25000,1)
			AI:SetArray(1,1)
		end

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		x = 270
		y = 183
		AI:SummonMonsterByPos(53251, x, y )
		
	end