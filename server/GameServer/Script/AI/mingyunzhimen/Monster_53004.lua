	-----------------------------------------
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2012/07/25
	--		Author���콨��
	--		AIName��Monster_53004.lua
	--		AIID������֮�ű�ɫ��
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	    
	end
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		ectypeID = AI:GetMapID()
		
		--��Ӧ��ɫ������1
--		now_num = AI:GetEctypeVarShort( ectypeID , 9 )
--		now_num = now_num - 1
--		if now_num < 0 then
--			now_num = 0
--		end
--		AI:SetEctypeVarShort( ectypeID , 9 , now_num )
		
		--ÿ��������ˢ��������ɫ�Ĺ���
		posX = AI:GetPosX()
		posY = AI:GetPosY()
		a = AI:GetRand(100)
		if a < 50 then
			AI:SummonMonsterByPos( 53003 , posX , posY)
			num8 = AI:GetEctypeVarShort(ectypeID,8)
			num8 = num8 + 1
			AI:SetEctypeVarShort(ectypeID,8,num8)
		else
			AI:SummonMonsterByPos( 53002 , posX , posY)
			num7 = AI:GetEctypeVarShort(ectypeID,7)
			num7 = num7 + 1
			AI:SetEctypeVarShort(ectypeID,7,num7)
		end
	end