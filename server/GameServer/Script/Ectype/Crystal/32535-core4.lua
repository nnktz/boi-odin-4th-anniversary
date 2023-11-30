 ---//****************************  
 ---//  Copyright:PERFECT WORLD  
 ---//  Modified:2013.2.25  
 ---//  Author:???  
 ---//  TaskName: 32535-core4.lua ????
 ---//****************************  
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--????-?????
			PosX = AI:GetPosX()
	 		PosY = AI:GetPosY()
			MonsterID=32533
			ran = math.random(-10,10)
			x=PosX + ran
		--	AI:Say(""..tostring(x))
			rany =math.random(-10,10)
			y =PosY +rany
		--	AI:Say(""..tostring(y))
			AI:SummonMonsterByPos(MonsterID,x,y,0)
		end--???1--------------------end
	--	
		if nIndex == 2 then--???2--????10S
			AI:SetTimer(1,100,50)
					
		end--???2--------------------end
		if nIndex == 3 then--???2--????10S
			AI:Exit()
					
		end--???2--------------------end
		if nIndex == 4 then--???2--????10S
			AI:ScreenText("The falling rocks have formed into Darkshadow Crystals! There's only 60 sec. until they disappear!",2)
					
		end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 		a = AI:GetArray(1)
		if a== 0 then
			AI:SetTimer(2,10000,1)
			AI:SetTimer(3,20000,1)
			AI:SetTimer(4,15000,1)
			AI:SetArray(1,1)
		end
 	

	end--functionEvent_ThinkingEND





