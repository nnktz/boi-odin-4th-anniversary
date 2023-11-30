-- //****************************  
-- //  Copyright：PERFECT WORLD  
-- //  Modified：2013.2.25  
-- //  Author：曹楚蒨  
-- //  TaskName： 32510冰霜之心 MAINN-AI
-- //****************************  


	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 0 then--计时器-0---放技能-
			a=AI:GetArray(1)
			if a < 30 then
				AI:ChangeFaction(1)
				AI:AddSkill(2377,2)
	    	AI:UseSkill(2377,2)
	    	AI:ChangeFaction(11)
	    	--AI:PlayEffect("common\\dayu\\tx_dayu.ini")
	    	--AI:PlayEffect("skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini")
	    	a=a+1
	    	AI:SetArray(1,a)
			end
	
		end--计时器0--------------------end
		if nIndex == 1 then----计时器1---寻路---
			a=AI:GetArray(2)
			if 	a== 0 then
			AI:UpdateSeekPath(1)
			end
			if 	a== 1 then
			AI:UpdateSeekPath(2)
			end
		end----计时器1---寻路---
		if nIndex == 2 then
			AI:Exit()
		end
	end--functionEvent_OnTimerEND
-------------------------------------------------------------------------thinking
-----50	表现用1

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 
			
			AI:SetTimer(0,3000,99)  
			AI:SetTimer(1,1000,999)
			AI:SetTimer(2,15000,1)
			AI:SetArray (3, 1)
      end
      
      
    end
-----------------------------------------------------------------------------
--

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then
	--路线1--------
			var=math.random(1,8)
			AI:SetArray(10,var)
			a=math.mod(var,8)-------mod
			cmax=8                          
			ox,oy,rr=220,183,13                   
			                     
			oa=6.28*a/cmax                     
			sx=ox+rr*math.sin(oa)              
			sy=oy+rr*math.cos(oa)              
				
	  AI:AddSeekPos( mapid , sx, sy )
	   
	end    
	if nIndex == 2 then
			var=AI:GetArray(10)
	  	var=var+4
	 	 	a=math.mod(var,8)-------mod
			cmax=8                          
			ox,oy,rr=220,183,13                   
			                     
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
	   	a=AI:GetArray(2)
		if 	a== 0 then
	   	var=AI:GetArray(10)
			a=math.mod(var,8)-------mod
			cmax=8                          
			ox,oy,rr=220,183,13                   
			                     
			oa=6.28*a/cmax                     
			sx=ox+rr*math.sin(oa)              
			sy=oy+rr*math.cos(oa)              
				

		if (( PosX == sx ) and ( PosY == sy )) then
--			SetDir( 225 )
			AI:SetArray(2,1)
		
		end
		end
		if 	a== 1 then
			var=AI:GetArray(10)
	  	var=var+4
	 	 	a=math.mod(var,8)-------mod
			cmax=8                          
			ox,oy,rr=220,183,13                   
			                     
			oa=6.28*a/cmax                     
			sx=ox+rr*math.sin(oa)              
			sy=oy+rr*math.cos(oa) 
		if (( PosX == sx ) and ( PosY == sy )) then
--			SetDir( 225 )
			AI:Exit()

		end
		end
	end