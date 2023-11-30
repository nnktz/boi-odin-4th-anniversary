---****************************  
---  Copyright:PERFECT WORLD  
---  Modified:2013.2.25  
---  Author:???  
---  TaskName: 32474 ???
---****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 0 then--???-0-
--			a=AI:GetArray(1)
--			if a == 0 then
--				PosX=AI:GetPosX()
--				PosY=AI:GetPosY()
--				n=AI:GetArray(3)
--				n1=AI:GetEctypeVarShort(mapid,50)
--				if n== 2 then
--					if n1 ==2 then
--					AI:Say("")
--					AI:SetArray(1,1)
--					AI:SetEctypeVarShort(mapid,50,3)
--					AI:Exit()
--					end
--				end		
--			end
--		end--???0--------------------end
			if nIndex == 1 then--???-1- 1??--
				a=AI:GetArray(2)
				if a == 0 then
					AI:UpdateSeekPath(1)
					a = a+ 1
					AI:SetArray(2,a)
				end
			end--???1--------------------end
			if nIndex == 2 then---------------???2----??
				AI:Exit()
			end-------------???2----??
			if nIndex == 3 then--???-1- 1??--
			a=AI:GetArray(4)
			if a == 0 then
				AI:UpdateSeekPath(2)
				a = a+ 1
				AI:SetArray(4,a)
			end
			end--???1--------------------end
			if nIndex == 4 then--???-1- 1??--
			a=AI:GetArray(5)
			if a == 0 then
				AI:UpdateSeekPath(3)
				a = a+ 1
				AI:SetArray(5,a)
			end
			end--???1--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
---50	???1

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		varline = AI:GetEctypeVarShort(mapid,0)
		if varline == 1 then--------------line1
			if n == 0 then 
			
	--		AI:SetTimer(0,1000,999) ?? 
			AI:SetTimer(1,2000,1)---??
			AI:SetArray (3, 1)
      end
     if n == 2 then 
     	AI:SetTimer(2,2000,1)---??
     	AI:SetArray (3, 4)
     end
    end
    if varline == 22 then--------------line22
			if n == 0 then 
			
	--		AI:SetTimer(0,1000,999) ?? 
			AI:SetTimer(3,2000,1)---??
			AI:SetArray (3, 1)
      end
     if n == 2 then 
     	AI:SetTimer(2,2000,1)---??
     	AI:SetArray (3, 4)
     end
    end
    if varline == 32 then--------------line22
			if n == 0 then 
	--		AI:SetTimer(0,1000,999) ?? 
			AI:SetTimer(4,2000,1)---??
			AI:SetArray (3, 1)
      end
     if n == 2 then 
     	AI:SetTimer(2,2000,1)---??
     	AI:SetArray (3, 4)
     end
    end  
    end
---------------------------------------------------------------------------

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then
	--??1--------
	  AI:AddSeekPos( mapid , 84, 160 )
	  AI:AddSeekPos( mapid , 112, 167 )
	  AI:AddSeekPos( mapid , 163, 173)
	  AI:AddSeekPos( mapid , 199, 181 )
 
	end    
	if nIndex == 2 then
	--??--------
	  AI:AddSeekPos( mapid , 113, 167 )
	  AI:AddSeekPos( mapid , 133, 186 )
    
	end 
	if nIndex == 3 then
	--??--------
	  AI:AddSeekPos( mapid , 74, 140 )
	  AI:AddSeekPos( mapid , 106, 124 )   
	 	AI:AddSeekPos( mapid , 109, 117 )
    
	end                  

	end

---------------------------------------------------------------------------
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			PosX = AI:GetPosX()
	   	PosY = AI:GetPosY()

		if (( PosX == 199 ) and ( PosY == 181 )) then
--			SetDir( 225 )
			AI:Say("I am but a guide... I can bring you here, but it's up to you to brave the ice!")
			AI:SetEctypeVarShort(mapid,50,11)
			AI:SetArray(3,2)

		end
		
		if (( PosX == 133 ) and ( PosY == 186 )) then
--			SetDir( 225 )
			AI:Say("This is as far as I can take you. Be careful!")
--			AI:SetEctypeVarShort(mapid,50,11)
			AI:SetArray(3,2)

		end
		if (( PosX == 109 ) and ( PosY == 117 )) then
--			SetDir( 225 )
--			AI:Say("This is as far as I can take you. Be careful!")
--			AI:SetEctypeVarShort(mapid,50,11)
			AI:SetArray(3,2)

		end
	end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)


	end--functionEvent_ThinkingEND





