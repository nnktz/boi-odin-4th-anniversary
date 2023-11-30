---****************************  
---  Copyright:PERFECT WORLD  
---  Modified:2013.2.25  
---  Author:???  
---  TaskName: 32531????
---****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 0 then--???-0-
			a=AI:GetArray(1)
			if a == 0 then
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				n=AI:GetArray(3)
				var50=AI:GetEctypeVarShort(mapid,50)
				if n== 2 then
					if var50 ==2 then
						AI:Say("Thy will be done.")
						AI:ScreenText("Guide Genie: Thy will be done.",2)
						AI:SetArray(1,1)
						AI:SetEctypeVarShort(mapid,50,3)
						AI:SetTimer(9,3000,1)
					end
				end		
			end
		end--???0--------------------end
		if nIndex == 1 then--???-1-
			a=AI:GetArray(2)
			if a == 0 then
				AI:Say("Let us call a truce, young warrior! I want you to meet our lord.")
				AI:ScreenText("Guide Genie: Let us call a truce, young warrior! I want you to meet our lord.",2)
				AI:SetArray(2,a+1)
			end
			if a == 1 then
				AI:UpdateSeekPath(1)
				AI:SetArray(2,a+1)
				AI:ScreenText("Guide Genie: Let us call a truce, young warrior! I want you to meet our lord.",2)
			end
		end--???1--------------------end

		if nIndex == 9 then
			AI:Exit()
		end
		
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
			AI:SetTimer(0,1000,999)
			AI:SetTimer(1,3000,3)
			AI:SetArray(3,1)
		end
      
      
	end
---------------------------------------------------------------------------

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
	
	  	AI:AddSeekPos( mapid , 72, 140 )
	  	AI:AddSeekPos( mapid , 67, 156 )
    
		end                  

	end

---------------------------------------------------------------------------
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			PosX = AI:GetPosX()
	   	PosY = AI:GetPosY()
			isarr=AI:IsArriveLastSeekPos()
			if ((PosX==67) and (PosY==156)) then
	--		AI:SetDir( 225 )
				AI:Say("My lord, a skilled warrior has appeared. He may be able to assist us!")
				AI:ScreenText("My lord, a skilled warrior has appeared. He may be able to assist us!",2)
				AI:SetEctypeVarShort(mapid,50,1)
				AI:SetArray(3,2)
			end
	end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	end--functionEvent_ThinkingEND





