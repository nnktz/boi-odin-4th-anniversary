-- //****************************  
-- //  Copyright：PERFECT WORLD  
-- //  Modified：2013.2.25  
-- //  Author：曹楚蒨  
-- //  TaskName： 32500 火焰之柱-mainAI 
-- //****************************  


	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 0 then--计时器-0---放技能-
			a=AI:GetArray(1)
			if a < 4 then
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				n1=AI:GetEctypeVarShort(mapid,50)
				var_line = AI:GetEctypeVarShort(mapid,0)
     
				if a == 0 then
					if n1 == 7 then
						AI:AddSkill(2522,5)
		    		AI:UseSkill(2522,5)
		    		--AI:PlayEffect("common\\dayu\\tx_dayu.ini")
		    		AI:PlayEffect("skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini")
		    		AI:SetArray(1,a+1)
		    		
		    		if var_line ~= 1 then
		    			PosX=AI:GetPosX()
							PosY=AI:GetPosY()
							MonsterID=32524
							Level=AI:GetEctypeVarShort(mapid,5)
							FieldLevel=AI:GetEctypeVarShort(mapid,6)
							var_count = AI:GetEctypeVarShort(mapid,68)
							if var_count <= 20 then
								if FieldLevel > 0 then
								AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0)
								AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0) 
								AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0)
								else  
								AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
								AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
								AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
								end
								var_count = var_count +1
								AI:SetEctypeVarShort(mapid,68,var_count)
							end    
						end
					end
				end
				if a == 1 then
					if n1 == 8 then
						AI:AddSkill(2522,5)
		    		AI:UseSkill(2522,5)
		    		--AI:PlayEffect("common\\dayu\\tx_dayu.ini")
		    		AI:PlayEffect("skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini")
		    		AI:SetArray(1,a+1)
		    		if var_line ~= 1 then
		    		PosX=AI:GetPosX()
						PosY=AI:GetPosY()
						MonsterID=32524
						Level=AI:GetEctypeVarShort(mapid,5)
						FieldLevel=AI:GetEctypeVarShort(mapid,6)
						var_count = AI:GetEctypeVarShort(mapid,68)
							if var_count <= 20 then
								if FieldLevel > 0 then
								AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0)
								AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0) 
								AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0)
								else  
								AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
								AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
								AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
								end
								var_count = var_count +1
								AI:SetEctypeVarShort(mapid,68,var_count)
							end
						end
					end
				end
				if a == 2 then
					if n1 == 9 then
						AI:AddSkill(2522,5)
		    		AI:UseSkill(2522,5)
		    		--AI:PlayEffect("common\\dayu\\tx_dayu.ini")
		    		AI:PlayEffect("skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini")
		    		AI:SetArray(1,a+1)
		    		if var_line ~= 1 then
		    		PosX=AI:GetPosX()
						PosY=AI:GetPosY()
						MonsterID=32524
						Level=AI:GetEctypeVarShort(mapid,5)
						FieldLevel=AI:GetEctypeVarShort(mapid,6)
						var_count = AI:GetEctypeVarShort(mapid,68)
						if var_count <= 20 then
						if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0) 
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0)
						else  
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
						end
						var_count = var_count +1
						AI:SetEctypeVarShort(mapid,68,var_count)
						end
						end
					end
				end
				if a == 3 then
					if n1 == 10 then
						AI:AddSkill(2522,5)
		    		AI:UseSkill(2522,5)
		    		--AI:PlayEffect("common\\dayu\\tx_dayu.ini")
		    		AI:PlayEffect("skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini")
		    		AI:SetArray(1,a+1)
		    		if var_line ~= 1 then
		    		PosX=AI:GetPosX()
						PosY=AI:GetPosY()
						MonsterID=32524
						Level=AI:GetEctypeVarShort(mapid,5)
						FieldLevel=AI:GetEctypeVarShort(mapid,6)
						var_count = AI:GetEctypeVarShort(mapid,68)
						if var_count <= 20 then
						if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0) 
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,PosX, PosY,0)
						else  
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, PosX, PosY)
						end
						var_count = var_count +1
						AI:SetEctypeVarShort(mapid,68,var_count)
						end
						end
					end
				end
	
				
	
			end
		end--计时器0--------------------end
	
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
				AI:SetTimer(0,1000,999)
				AI:SetArray(3,1)
      end
      
      
    end
-----------------------------------------------------------------------------
--
