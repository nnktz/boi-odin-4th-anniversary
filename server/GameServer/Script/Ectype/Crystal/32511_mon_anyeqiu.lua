-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32511???? MAINN-AI
-- //****************************  


	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 0 then--???-0---???-1s??
			a=AI:GetArray(1)
			if a < 5 then
				a=a+1
				AI:SetArray(1,a)
				a=5-a
				AI:ScreenText("Explosion countdown: "..tostring(a),2)
			end

		end--???0--------------------end
		if nIndex == 1 then----???1---??---??????
			a=AI:GetArray(2)
			if 	a== 0 then
			AI:UpdateSeekPath(1)
			AI:SetArray(2,1)
			end
		end----???1---??---
		if nIndex == 3 then----???3---??-????????
				a=AI:GetArray(4)
				if a==0 then
				AI:ChangeFaction(1)
				AI:AddSkill(2540,1)
	    	AI:UseSkill(2540,1)
	    	--AI:PlayEffect("common\\dayu\\tx_dayu.ini")
	    	AI:ScreenText("Boom!",2)
	    	--Effect\skill\Common\Common_baozha_01\tx_common_baozha_01.ini
	    	AI:PlayEffect("skill\\Common\\Common_baozha_01\\tx_common_baozha_01.ini")
	    	a=a+ 1
	    	AI:SetArray(4,a)
	    	AI:Exit()
				end
		end----???3---??
		if nIndex == 4 then----???4---m1m1?????
			a=AI:GetArray(5)
	    	--AI:PlayEffect("common\\dayu\\tx_dayu.ini")
	    	--AI:PlayEffect("skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini")
			if a== 0 then
			
				target=AI:GetTargetID()
				if target >0 then
				AI:AddSkill(2539,1)
	    	AI:UseSkill(2539,1)
	    	AI:SetArray(5,1)
	    	AI:SetTimer(0,1000,4)
	    	AI:SetTimer(3,5000,1)
				end
			end
		end----???4---1m1?????
	end--functionEvent_OnTimerEND
-------------------------------------------------------------------------thinking
-----50	???1

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 
			AI:ChangeFaction(1)
			AI:SetTimer(4,100,999)  
			AI:SetTimer(1,1000,1) 
			AI:SetArray (3, 1)
      end
      
      
    end
-----------------------------------------------------------------------------
--

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then
	--??1--------
			var=GetEctypeVarShort(mapid,59)
			a=math.mod(var,6)-------mod
			cmax=6                          
			ox,oy,rr=171,268,13                   
			                     
			oa=6.28*a/cmax                     
			sx=ox+rr*math.sin(oa)              
			sy=oy+rr*math.cos(oa)              
	  	AI:AddSeekPos( mapid , sx, sy )
	   
	end    
	end

---------------------------------------------------------------------------
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
			PosX = AI:GetPosX()
	   	PosY = AI:GetPosY()
	   var=GetEctypeVarShort(mapid,59)
			a=math.mod(var,6)-------mod
			cmax=6                          
			ox,oy,rr=171,268,13                   
			                     
			oa=6.28*a/cmax                     
			sx=ox+rr*math.sin(oa)              
			sy=oy+rr*math.cos(oa)                    

		if (( PosX == sx ) and ( PosY == sy )) then
--			SetDir( 225 )
			AI:SetTimer(3,3000,1)
		end
	end