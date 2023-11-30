	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/10
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			a = AI:GetRand(9)
			
			if a == 0 then
				AI:ScreenText("Male Officer: the world is going to the end! We need a leader!",2)
			end
			
			if a == 1 then
				AI:ScreenText("Male Officer: can you fell it? Dragon Emperor Ridge is shaking, we will have a revival!",2)
			end
			
			if a == 2 then
				AI:ScreenText("Male Officer: Come on, Dragon Emperor!",2)
			end
			
			if a == 3 then
				AI:ScreenText("Male Officer: Can you feel the power of Soul Crystal? Dragon Emperor, find your soul, retrive your will, we need your guide!",2)
			end
			
			if a == 4 then
				AI:ScreenText("Male Officer: The world is full of evil souls! It is the time to eliminate them!",2)
			end
			
			if a == 5 then
				AI:ScreenText("Male Officer: Humans! Raise your head and see the Saviour falling! The world is headed towards rebirth!",2)
			end
			
			if a == 6 then
				AI:ScreenText("Male Officer: Noboday can stop us, we are justice!",1)
			end
			
			if a == 7 then
				AI:ScreenText("Male Officer: Face reality, don't resist! Put down your weapon and see what's happening. You will find your true happiness!",2)
			end
			
			if a == 8 then
				AI:ScreenText("Male Officer: Dragon Emperor is supreme! Don't ever think about hurting him, just obey him!",2)
			end
			
			if a == 9 then
				AI:ScreenText("Male Officer: The world is headed for rebirth, no lies, no deceptions. The Dragon Emperor will bring a new truth to us!",2)
			end
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		
		if a == 0 then
			AI:SetTimer(0,20000,65535)
			AI:SetArray(1,2)
		end
	end