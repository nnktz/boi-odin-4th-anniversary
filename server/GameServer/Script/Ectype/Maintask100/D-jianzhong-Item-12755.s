	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/29
	//		Author:???
	//		TaskName:97-item-12755.s
	//		TaskID:  XXX
	//
	//****************************************
	
	
	function OnUseItem(){



//		$Accept = IsTaskAccept( -1 , 231 )
//		if $Accept != 0
//			return
//		endif

		$mapid = GetPlayerInfo( -1 , "mapid" )
		$ectype_id = GetEctypeID( -1 , 255 )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		$bossinfo = GetEctypeVar( $ectype_id , 5 )
		//$bossinfo = GetPlayerVar( -1 , 53 )
		if $bossinfo == 1 
			BC( "screen" , "player" , -1 , "A powerful enemy is summoned, you cannot summon another now" )
			BC( "chat" , "player" , -1 , "A powerful enemy is summoned, you cannot summon another now" )
			return
		endif
		
		if $mapid != $ectype_id
			BC( "screen" , "player" , -1 , "Only can summon outside Swordgrave" )
			BC( "chat" , "player" , -1 , "Only can summon outside Swordgrave" )
			return
		endif
		
		if $ectype_id < 1
			return
		endif
		
		if $posx < 84
			BC( "screen" , "player" , -1 , "Can't summon Ashurajan's soul here" )
			BC( "chat" , "player" , -1 , "Can't summon Ashurajan's soul here" )
			return
		endif
		if $posx > 99
			BC( "screen" , "player" , -1 , "Can't summon Ashurajan's soul here"  )
			BC( "chat" , "player" , -1 , "Can't summon Ashurajan's soul here" )
			return
		endif
		if $posy < 64
			BC( "screen" , "player" , -1 , "Can't summon Ashurajan's soul here"  )
			BC( "chat" , "player" , -1 , "Can't summon Ashurajan's soul here" )
			return
		endif
		if $posy > 79
			BC( "screen" , "player" , -1 , "Can't summon Ashurajan's soul here"  )
			BC( "chat" , "player" , -1 , "Can't summon Ashurajan's soul here" )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 12755 , 1 )
		if  $info != 0
			return
		endif		
		
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		//AddPlayerInfo ( -1 , "item" , 12717 , 1 )
		BC( "chat" , "player" , -1 , "Danger, Ashurajan's soul appears" )
		BC( "screen" , "player" , -1 , "Danger, Ashurajan's soul appears" )
		AddMonsterByFloat( 59106 , 1 , $ectype_id , 92 , 71 , 0 )
		SetEctypeVar( $ectype_id , 5 , 1 )
		//SetPlayerVar( -1, 53, 1 )
	}