-- //****************************  
-- //  Copyright£∫PERFECT WORLD  
-- //  Modified£∫2013.2.25  
-- //  Author£∫≤‹≥˛…`  
-- //  TaskName£∫ 32478∫Æ«Ú 
-- //****************************  
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
	
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
---50	±Ìœ÷”√1

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		outvar1=AI:GetEctypeVarShort(mapid,25)
		if outvar1 == 1 then
			AI:Exit()
		end
    end
---------------------------------------------------------------------------

--function Event_UpdateSeekPos(nAI,nIndex)
--	local AI = GetMonsterAI(nAI)
--	local mapid = AI:GetMapID()
--	if nIndex == 1 then
--		a=AI:GetArray(5)
--		if a == 0 then
--			count = AI:GetEctypeVarShort(mapid,31)
--			AI:SetArray(5,1)
--		end
--		a=AI:GetEctypeVarShort(mapid,9)
--		for c=count+1,2*a+count+1 do
--				AI:SetEctypeVarShort(mapid,31,c)
--				PosX=AI:GetPosX()
--				PosY=AI:GetPosY()
--				MonsterID1=32478
--				MonsterID2=32479
--					b=math.mod(c,2*a)-------mod
--					cmax=2*a                          
--					ox,oy,rr=	PosX,PosY,14                                       
--					oa=6.28*b/cmax                     
--					sx=ox+rr*math.sin(oa)              
--					sy=oy+rr*math.cos(oa)   
--  			AI:AddSeekPos( mapid , sx, sy )
-- 		end   
--end                  
--
--end

---------------------------------------------------------------------------
--function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
--	local AI = GetMonsterAI(nAI)
--	local mapid = AI:GetMapID()
--		PosX = AI:GetPosX()
--   	PosY = AI:GetPosY()
--		isarrivel = AI:IsArriveLastSeekPos()
--		if isarrivel == 1 then
--			AI:UpdateSeekPath(1)
--		end
--end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)




	end--functionEvent_ThinkingEND



