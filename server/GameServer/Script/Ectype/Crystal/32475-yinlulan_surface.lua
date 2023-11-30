---****************************  
---  Copyright:PERFECT WORLD  
---  Modified:2013.2.25  
---  Author:???  
---  TaskName: 32475 ?????
---****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???-1-
			a=AI:GetArray(2)
			if a == 0 then
				AI:ScreenText("Guidebird: You dare stand with the Darkness? The goddess has a message for you...",2)
				a=a+1
				AI:SetArray(2,a)
			end
			if a == 1 then
				AI:UpdateSeekPath(1)
				a=a+1
				AI:SetArray(2,a)
			end
			if a == 2 then
				AI:Say("You dare stand with the Darkness? The goddess has a message for you...")
				AI:ScreenText("Guidebird: You dare stand with the Darkness? The goddess has a message for you...",2)
				a=a+1
				AI:SetArray(2,a)
			end
			if a == 3 then
				AI:ScreenText("Guidebird: You dare stand with the Darkness? The goddess has a message for you...",2)
				a=a+1
				AI:SetArray(2,a)
			end
		end--???1--------------------end
		if nIndex == 2 then---------------???2----??
				AI:Exit()
		end-------------???2----??
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
---50	???1

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 
		
			AI:SetTimer(1,3000,4)
			AI:SetArray (3, 1)
      end
    if n == 2 then 
     	AI:SetTimer(2,2000,1)---??
     	AI:SetArray (3, 4)
     end
      
      
    end
---------------------------------------------------------------------------

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then
	
	  AI:AddSeekPos( mapid , 72, 140 )
	  AI:AddSeekPos( mapid , 106, 126 )   
	 	AI:AddSeekPos( mapid , 112, 114 )
    
	end                  

	end

---------------------------------------------------------------------------
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
			PosX = AI:GetPosX()
	   	PosY = AI:GetPosY()

		if (( PosX == 112 ) and ( PosY == 114 )) then
			--AI:SetDir( 225 )
			AI:ScreenText("Go forth, and know well your regrets. The Queen awaits...",2)
			AI:OpenMapMask(1)
			AI:SetArray(3,2)
		end
	end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	
	end--functionEvent_ThinkingEND





