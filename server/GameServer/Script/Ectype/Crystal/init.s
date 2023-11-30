 //****************************
 //  Copyright:PERFECT WORLD
 //  Modified:2013.2.25
 //  Author:???
 //  TaskName: ???
 //****************************
	function OnCreate(){

}

	function InitTimer(){

		$ectype_id = GetEctypeID( -1 , 573 )
		SetEctypeTimer( 0 , 1, "EctypeTimer0" )
		SetEctypeTimer( 1 , 1 , "EctypeTimer1" )
		SetEctypeTimer( 2 , 1 , "EctypeTimer2" )
		SetEctypeTimer( 3 , 1 , "EctypeTimer3" )
		SetEctypeTimer( 4 , 1 , "EctypeTimer4" )
		SetEctypeTimer( 5 , 1 , "Count_Down_29" )
		SetEctypeTimer( 6 , 1 , "Count_Down_10" )
		SetEctypeTimer( 7 , 1 , "Count_Down_60" )


}
//????? 123
//32526	???1 32467
//32527	???2
//32528	???3
//32529	???4
//32530	???5
	function EctypeTimer0(){

		$ectype_id = GetCurEctypeID()
//		BC( "chat", "map", $ectype_id, "GUID:04030000000")
		$var1 = GetEctypeVar($ectype_id,0)

//-----------------??----------------
		if $var1 == 1
			$turn = GetEctypeVar($ectype_id, 1)
			if $turn == 0
				$mon1 = 32506
	//		AddNpcByPos( 1174 ,$ectype_id ,142,169,79200,0)
				AddNpcByPos( 1179 ,$ectype_id ,136,188,79200,0)
				AddMonsterByFloat( $mon1 , 1, $ectype_id, 136, 172, 1 ,0 ,180 )
				//BC("screen","map",$ectype_id,"Instance has been refreshed.")
	//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
				//???? 1
				SetEctypeVar($ectype_id,71,100)
				SetEctypeVar($ectype_id,72,100)
				SetEctypeVar($ectype_id,73,100)
				SetEctypeVar($ectype_id, 1, 1)
				call add_shuijin()
			endif
//BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
			if $turn == 1
				$mon1 = 32471
				$mon2 = 32468
				$level = GetEctypeVar($ectype_id,5)
				$flevel = GetEctypeVar($ectype_id,6)
				if $flevel > 0
					$posx = 120
					$posy = 120
					$posx *= 100
					$posx /= 256
					$posy *= 100
					$posy /= 256
					AddLevelFieldMonster( $mon1,267,$level,267,$flevel,1,$ectype_id,$posx, $posy, 1 )
					$posx = 115
					$posy = 117
					$posx *= 100
					$posx /= 256
					$posy *= 100
					$posy /= 256
					AddLevelFieldMonster( $mon2,266,$level,266,$flevel,5,$ectype_id,$posx, $posy, 3 )
					$posx = 128
					$posy = 117
					$posx *= 100
					$posx /= 256
					$posy *= 100
					$posy /= 256
					AddLevelFieldMonster( $mon2,266,$level,266,$flevel,5,$ectype_id,$posx, $posy, 3 )
					else
					$posx = 120
					$posy = 120
					$posx *= 100
					$posx /= 256
					$posy *= 100
					$posy /= 256
					AddLevelMonster($mon1,267,$level,1,$ectype_id,$posx, $posy, 1)
					$posx = 115
					$posy = 117
					$posx *= 100
					$posx /= 256
					$posy *= 100
					$posy /= 256
					AddLevelMonster($mon2,266,$level,5,$ectype_id,$posx, $posy, 3)
					$posx = 128
					$posy = 117
					$posx *= 100
					$posx /= 256
					$posy *= 100
					$posy /= 256
					AddLevelMonster($mon2,266,$level,5,$ectype_id,$posx, $posy, 3)
				endif
	//			BC("screen","map",$ectype_id,"GUID:04030000003")
	//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
				//???? 1
				SetEctypeVar(-1, 1, 2)
			endif
			if $turn == 2
				//32532	????
				//32517	????
				$mon1 = 32517
				$mon2 = 32532
				//32501	????
				$mon3 = 32501
				//AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,$posx, $posy, 1 )
				//	AddLevelMonster($mon1,258,$level,1,$ectype_id,$posx, $posy, 1)
				$level = GetEctypeVar($ectype_id,5)
				$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
				AddLevelFieldMonster( $mon1,267,$level,267,$flevel,1,$ectype_id,24, 62, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,24, 61, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,25, 60, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,26, 59, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,27, 58, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,27, 57, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,25, 63, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,25, 63, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,26, 64, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,27, 57, 1 )
				AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,28, 58, 1 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 77, 164, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 74, 151, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 61, 151, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 59, 161, 1 ,0 ,180 )
			else
				AddLevelMonster($mon1,267,$level,1,$ectype_id,24, 62, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,24, 61, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,25, 60, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,26, 59, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,27, 58, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,27, 57, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,25, 63, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,25, 63, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,26, 64, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,27, 57, 1)
				AddLevelMonster($mon2,266,$level,1,$ectype_id,28, 58, 1)
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 77, 164, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 74, 151, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 61, 151, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 59, 161, 1 ,0 ,180 )
			endif
//			BC("screen","map",$ectype_id,"GUID:04030000005")
//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 1, 3)
			endif
			if $turn == 3

		//32474	???-?
			SetEctypeVar($ectype_id,70,1)
			$mon1 = 32474
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 64, 154, 1 ,0 ,180 )
			OpenMask(16,$ectype_id)
			OpenMask(11,$ectype_id)
				//32464	????
				//32469	????
				//32470	????2
				//32485	????
			$mon1 = 32464
			$mon2 = 32469
			$mon3 = 32470
			$mon4 = 32485
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			AddLevelFieldMonster( $mon1,267,$level,267,$flevel,1,$ectype_id,93, 70, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,87, 69, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,88, 70, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,89, 70, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,89, 71, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,90, 72, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,86, 69, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,85, 70, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,84, 70, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,83, 71, 1 )
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,82, 72, 1 )
			AddLevelFieldMonster( $mon3,266,$level,266,$flevel,1,$ectype_id,84, 72, 1 )
			AddLevelFieldMonster( $mon3,266,$level,266,$flevel,1,$ectype_id,84, 73, 1 )
			AddLevelFieldMonster( $mon3,266,$level,266,$flevel,1,$ectype_id,84, 73, 1 )
			AddLevelFieldMonster( $mon3,266,$level,266,$flevel,1,$ectype_id,84, 74, 1 )
			AddLevelFieldMonster( $mon3,266,$level,266,$flevel,1,$ectype_id,88, 72, 1 )
			AddLevelFieldMonster( $mon3,266,$level,266,$flevel,1,$ectype_id,88, 73, 1 )
			AddLevelFieldMonster( $mon3,266,$level,266,$flevel,1,$ectype_id,88, 74, 1 )
			AddLevelFieldMonster( $mon3,266,$level,266,$flevel,1,$ectype_id,88, 75, 1 )
			AddMonsterByFloat( $mon4 , 1, $ectype_id, 207, 185, 1 ,0 ,180 )
			AddMonsterByFloat( $mon4 , 1, $ectype_id, 216, 190, 1 ,0 ,180 )
			AddMonsterByFloat( $mon4 , 1, $ectype_id, 227, 190, 1 ,0 ,180 )
			else
			//AddLevelMonster($mon3,257,$level,1,$ectype_id,23, 63, 1)
			AddLevelMonster ( $mon1,267,$level,1,$ectype_id,93, 70, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,87, 69, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,88, 70, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,89, 70, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,89, 71, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,90, 72, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,86, 69, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,85, 70, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,84, 70, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,83, 71, 1 )
			AddLevelMonster ( $mon2,266,$level,1,$ectype_id,82, 72, 1 )
			AddLevelMonster ( $mon3,266,$level,1,$ectype_id,84, 72, 1 )
			AddLevelMonster ( $mon3,266,$level,1,$ectype_id,84, 73, 1 )
			AddLevelMonster ( $mon3,266,$level,1,$ectype_id,84, 73, 1 )
			AddLevelMonster ( $mon3,266,$level,1,$ectype_id,84, 74, 1 )
			AddLevelMonster ( $mon3,266,$level,1,$ectype_id,88, 72, 1 )
			AddLevelMonster ( $mon3,266,$level,1,$ectype_id,88, 73, 1 )
			AddLevelMonster ( $mon3,266,$level,1,$ectype_id,88, 74, 1 )
			AddLevelMonster ( $mon3,266,$level,1,$ectype_id,88, 75, 1 )
			AddMonsterByFloat( $mon4 , 1, $ectype_id, 207, 185, 1 ,0 ,180 )
			AddMonsterByFloat( $mon4 , 1, $ectype_id, 216, 190, 1 ,0 ,180 )
			AddMonsterByFloat( $mon4 , 1, $ectype_id, 227, 190, 1 ,0 ,180 )


			endif
			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
//		BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 1, 5)
			endif
			if $turn == 5
		//1176	????

			AddNpcByPos( 1176 ,$ectype_id ,216,242,79200,0)


			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 1, 6)
			endif
			if $turn == 6
		//32465	???
			//$mon1 = 32465
			//$level = GetEctypeVar($ectype_id,5)
			//$flevel = GetEctypeVar($ectype_id,6)
			//if $flevel > 0
			//AddLevelFieldMonster( $mon1,259,$level,259,$flevel,1,$ectype_id,67, 105, 1 )
			//else
			//AddLevelMonster($mon1,259,$level,1,$ectype_id,67, 105, 1)
			//endif
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$mon2 = 32515
			if $flevel > 0
			AddLevelFieldMonster( $mon2,265,$level,265,$flevel,1,$ectype_id,66, 101, 1 )
			AddLevelFieldMonster( $mon2,265,$level,265,$flevel,1,$ectype_id,64, 105, 1 )
			AddLevelFieldMonster( $mon2,265,$level,265,$flevel,1,$ectype_id,69, 105, 1 )
			else
			AddLevelMonster( $mon2,265,$level,1,$ectype_id,66, 101,1 )
			AddLevelMonster( $mon2,265,$level,1,$ectype_id,64, 105,1 )
			AddLevelMonster( $mon2,265,$level,1,$ectype_id,69, 105,1 )
			endif
			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 1, 7)
			endif
			if $turn == 7
		//32492	???1
			AddNpcByPos( 1193 ,$ectype_id ,171,257,79200,0)
			AddNpcByPos( 1174 ,$ectype_id ,142,169,79200,0)
			SetEctypeVar($ectype_id,20,1)
			BC("screen","map",$ectype_id,"The instance has been completed!")
			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 1, 8)
			endif
		endif
		if $var1 == 2
			StartEctypeTimer($ectype_id,1)
		endif
		if $var1 == 3
			StartEctypeTimer($ectype_id,2)
//			AddNpcByPos( 1174 ,$ectype_id ,142,169,79200,0)
		endif

}

function EctypeTimer1(){

		$ectype_id = GetEctypeID( -1 , 573 )
		$turn = GetEctypeVar(-1, 2)
//1173	????
//1174	????
//1175	????
//1176	????
//1177	????


//		BC( "chat", "map", $ectype_id, "GUID:04030000015")
			if $turn == 0
				SetEctypeVar($ectype_id,71,100)
				SetEctypeVar($ectype_id,72,100)
				SetEctypeVar($ectype_id,73,100)
				AddNpcByPos( 1179 ,$ectype_id ,63,147,79200,0)
				AddNpcByPos( 1173 ,$ectype_id ,76,158,79200,0)
				AddNpcByPos( 1177 ,$ectype_id ,63,154,79200,0)
				$mon3 = 32501
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 77, 164, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 74, 151, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 61, 151, 1 ,0 ,180 )
				AddMonsterByFloat( $mon3 , 1, $ectype_id, 59, 161, 1 ,0 ,180 )
//				BC("screen","map",$ectype_id,"GUID:04030000016")
				//???? 1
				SetEctypeVar(-1, 2, 1)
				call add_shuijin()
			endif
//bbbbbbbbbb
			if $turn == 1
			SetEctypeVar($ectype_id,70,2)
			$mon1 = 32471
			$mon2 = 32468
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			$posx = 120
			$posy = 120
			$posx *= 100
			$posx /= 256
			$posy *= 100
			$posy /= 256
			AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,$posx, $posy, 1 )
			$posx = 115
			$posy = 117
			$posx *= 100
			$posx /= 256
			$posy *= 100
			$posy /= 256
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,5,$ectype_id,$posx, $posy, 1 )
			$posx = 128
			$posy = 117
			$posx *= 100
			$posx /= 256
			$posy *= 100
			$posy /= 256
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,5,$ectype_id,$posx, $posy, 1 )
			else
			$posx = 120
			$posy = 120
			$posx *= 100
			$posx /= 256
			$posy *= 100
			$posy /= 256
			AddLevelMonster($mon1,258,$level,1,$ectype_id,$posx, $posy, 1)
			$posx = 115
			$posy = 117
			$posx *= 100
			$posx /= 256
			$posy *= 100
			$posy /= 256
			AddLevelMonster($mon2,256,$level,5,$ectype_id,$posx, $posy, 1)
			$posx = 128
			$posy = 117
			$posx *= 100
			$posx /= 256
			$posy *= 100
			$posy /= 256
			AddLevelMonster($mon2,256,$level,5,$ectype_id,$posx, $posy, 1)

			endif
			OpenMask(2,$ectype_id)

//			BC("screen","map",$ectype_id,"GUID:04030000017")
//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 2, 2)
			endif
//hhhhhhhhhhh
			if $turn == 2
			//1175	????
			//32482	????
			//32506	????
			//32507	????(??)
			//32508	????
			//32478	??
//		32479	??
		//	AddNpcByPos( 1175 ,$ectype_id ,192,117,79200,0)
			$mon1 = 32482
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 192, 117, 1 ,0 ,180 )
			AddMonsterByFloat( 32516 , 1, $ectype_id, 192, 115, 1 ,0 ,180 )
	//		$mon1 = 32528
	//		AddMonsterByFloat( $mon1 , 1, $ectype_id, 194, 112, 1 ,0 ,180 )
		//???? lua ????
//			BC("screen","map",$ectype_id,"GUID:04030000020")
//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 2, 3)
			endif

			if $turn == 3
		//	AddNpcByPos( 1175 ,$ectype_id ,192,117,79200,0)
			OpenMask(10,$ectype_id)
			
			$mon1 = 32499
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,54, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,55, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,57, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,59, 64, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,63, 66, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,62, 68, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,58, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,54, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,53, 67, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,52, 68, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,51, 69, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 66, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,46, 65, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 64, 1 )
                                               
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,47, 67, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,52, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,56, 69, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,46, 62, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,59, 71, 1 )
			else
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,54, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,55, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,57, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,59, 64, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,63, 66, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,62, 68, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,58, 70, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,54, 70, 1 )
                              
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,53, 67, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,52, 68, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,51, 69, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 66, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,46, 65, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 64, 1 )
                               
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,47, 67, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,52, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,56, 69, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 70, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,46, 62, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,59, 71, 1 )
			endif
			SetEctypeVar(-1, 2,4)
			endif
			if $turn == 4
			//32467	???
			OpenMask(15,$ectype_id)
			$mon1 = 32520
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 108, 238, 1 ,0 ,180 )
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$mon2 = 32529
			if $flevel > 0
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,42, 88, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,42, 96, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,39, 93, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,45, 93, 1 )
			else
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,42, 88, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,42, 96, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,39, 93, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,45, 93, 1 )
			endif
			//???? 1
			SetEctypeVar(-1, 2,5)
			endif
			if $turn == 5
			OpenMask(4,$ectype_id)
			//32465	axina
			//$mon1 = 32465
			//$level = GetEctypeVar($ectype_id,5)
			//$flevel = GetEctypeVar($ectype_id,6)
			//if $flevel > 0
			//AddLevelFieldMonster( $mon1,259,$level,259,$flevel,1,$ectype_id,63, 103, 1 )
			//else
			//AddLevelMonster($mon1,259,$level,1,$ectype_id,63, 103, 1)
			//endif
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$mon2 = 32515
			if $flevel > 0
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,67, 100, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,65, 101, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 103, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 105, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 107, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,66, 108, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,68, 109, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,69, 108, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,70, 106, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,70, 104, 1 )
			else
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,67, 100, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,65, 101, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 103, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 105, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 107, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,66, 108, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,68, 109, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,69, 108, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,70, 106, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,70, 104, 1 )
			endif
			//???? 1
			SetEctypeVar(-1, 2,6)

			endif
			if $turn == 6
			//1193	?????? ???
				AddNpcByPos( 1193 ,$ectype_id ,170, 259,79200,0)
				AddNpcByPos( 1174 ,$ectype_id ,142,169,79200,0)
				SetEctypeVar($ectype_id,21,1)
				BC("screen","map",$ectype_id,"The instance has been completed!")
				BC("chat","map",$ectype_id,"The instance has been completed!")
			//???? 1
			SetEctypeVar(-1, 2,7)

			endif


}
function EctypeTimer2(){

		$ectype_id = GetEctypeID( -1 , 573 )
		$turn = GetEctypeVar(-1, 3)
		$level = GetEctypeVar($ectype_id,5)
		$flevel = GetEctypeVar($ectype_id,6)
//32467	???

//		BC( "chat", "map", $ectype_id, "GUID:04030000024")
			if $turn == 0
				SetEctypeVar($ectype_id,71,100)
				SetEctypeVar($ectype_id,72,100)
				SetEctypeVar($ectype_id,73,100)
				AddNpcByPos( 1179 ,$ectype_id ,117,257,79200,0)
				$mon1 = 32520
				AddMonsterByFloat( $mon1 , 1, $ectype_id, 108, 238, 1 ,0 ,180 )
				$level = GetEctypeVar($ectype_id,5)
				$flevel = GetEctypeVar($ectype_id,6)
				$mon2 = 32529
				if $flevel > 0
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,42, 88, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,42, 96, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,39, 93, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,45, 93, 1 )
				else
				AddLevelMonster( $mon2,256,$level,1,$ectype_id,42, 88, 1 )
				AddLevelMonster( $mon2,256,$level,1,$ectype_id,42, 96, 1 )
				AddLevelMonster( $mon2,256,$level,1,$ectype_id,39, 93, 1 )
				AddLevelMonster( $mon2,256,$level,1,$ectype_id,45, 93, 1 )
				endif
				//BC("screen","map",$ectype_id,"Instance has been refreshed.")
				SetEctypeVar(-1, 3, 1)
				call add_shuijin()
			endif
			if $turn == 1
//?????? yinlu surface 1178	???
				SetEctypeVar($ectype_id,70,3)
				$mon1 = 32520
				AddMonsterByFloat( $mon1 , 1, $ectype_id, 118, 233, 1 ,0 ,180 )
				OpenMask(4,$ectype_id)
				AddNpcByPos( 1178 ,$ectype_id ,168,263,79200,0)
				//BC("screen","map",$ectype_id,"Instance has been refreshed.")
//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 3, 2)
			endif
			if $turn == 2
		//1176	????

			AddNpcByPos( 1176 ,$ectype_id ,216,242,79200,0)
			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
//			BC("chat","map",$ectype_id,"Instance has been refreshed.")
			//???? 1
			SetEctypeVar(-1, 3, 3)
			endif
			if $turn == 3
				//32464	????
				//32469	????
				//32470	????2
				//32485	????
				$mon1 = 32464
				$mon2 = 32469
				$mon3 = 32470
				$mon4 = 32485
				$level = GetEctypeVar($ectype_id,5)
				$flevel = GetEctypeVar($ectype_id,6)
				if $flevel > 0
				AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,93, 70, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,87, 69, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,88, 70, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,89, 70, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,89, 71, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,90, 72, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,86, 69, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,85, 70, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,84, 70, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,83, 71, 1 )
				AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,82, 72, 1 )
				AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 72, 1 )
				AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 73, 1 )
				AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 73, 1 )
				AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 74, 1 )
				AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 72, 1 )
				AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 73, 1 )
				AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 74, 1 )
				AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 75, 1 )
				AddMonsterByFloat( $mon4 , 1, $ectype_id, 207, 185, 1 ,0 ,180 )
				AddMonsterByFloat( $mon4 , 1, $ectype_id, 216, 190, 1 ,0 ,180 )
				AddMonsterByFloat( $mon4 , 1, $ectype_id, 227, 190, 1 ,0 ,180 )
				else
				//AddLevelMonster($mon3,257,$level,1,$ectype_id,23, 63, 1)
				AddLevelMonster ( $mon1,258,$level,1,$ectype_id,93, 70, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,87, 69, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,88, 70, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,89, 70, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,89, 71, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,90, 72, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,86, 69, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,85, 70, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,84, 70, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,83, 71, 1 )
				AddLevelMonster ( $mon2,256,$level,1,$ectype_id,82, 72, 1 )
				AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 72, 1 )
				AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 73, 1 )
				AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 73, 1 )
				AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 74, 1 )
				AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 72, 1 )
				AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 73, 1 )
				AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 74, 1 )
				AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 75, 1 )
				AddMonsterByFloat( $mon4 , 1, $ectype_id, 207, 185, 1 ,0 ,180 )
				AddMonsterByFloat( $mon4 , 1, $ectype_id, 216, 190, 1 ,0 ,180 )
				AddMonsterByFloat( $mon4 , 1, $ectype_id, 227, 190, 1 ,0 ,180 )
				endif
				SetEctypeVar(-1, 3, 4)
			endif
			if $turn == 4
			//??32499
				$mon1 = 32499
				$level = GetEctypeVar($ectype_id,5)
				$flevel = GetEctypeVar($ectype_id,6)
				if $flevel > 0
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,54, 63, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,55, 63, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,57, 63, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,59, 64, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,63, 66, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,62, 68, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,58, 70, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,54, 70, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,53, 67, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,52, 68, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,51, 69, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 66, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,46, 65, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 64, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,47, 67, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,52, 63, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,56, 69, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 70, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,46, 62, 1 )
				AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,59, 71, 1 )
				else
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,54, 63, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,55, 63, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,57, 63, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,59, 64, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,63, 66, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,62, 68, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,58, 70, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,54, 70, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,53, 67, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,52, 68, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,51, 69, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 66, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,46, 65, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 64, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,47, 67, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,52, 63, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,56, 69, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 70, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,46, 62, 1 )
				AddLevelMonster( $mon1,256,$level,1,$ectype_id,59, 71, 1 )
				endif
				SetEctypeVar(-1, 3, 5)
			endif
			if $turn == 5
		//?????BOSS
					$vary = GetEctypeVar($ectype_id,16)
					if $vary == 2
						//32466	??
						//32474	???-?
						//32475	???-?
						OpenMask(2,$ectype_id)
						
						$mon2 = 32474
						$mon3 = 32475
					//	AddMonsterByFloat( $mon1 , 1, $ectype_id, 64, 69, 1 ,0 ,180 )
						AddMonsterByFloat( $mon2 , 1, $ectype_id, 69, 152, 1 ,0 ,180 )
						AddMonsterByFloat( $mon3 , 1, $ectype_id, 72, 152, 1 ,0 ,180 )
					//BC("screen","map",$ectype_id,"Instance has been refreshed.")
//					BC("chat","map",$ectype_id,"Instance has been refreshed.")
					//???? 1
					SetEctypeVar(-1, 3, 6)
					endif
					if $vary < 2
						//1193	?????? ???
					AddNpcByPos( 1193 ,$ectype_id ,72,157,79200,0)
					AddNpcByPos( 1174 ,$ectype_id ,142,169,79200,0)
					BC("screen","map",$ectype_id,"The instance has been completed!")
					BC("chat","map",$ectype_id,"The instance has been completed!")
					SetEctypeVar($ectype_id,24,1)
//					BC("chat","map",$ectype_id,"Instance has been refreshed.")
					//???? 1
					SetEctypeVar(-1, 3, 7)
					endif
			endif
			if $turn == 6
		//??
					$vary = GetEctypeVar($ectype_id,16)
					if $vary == 2
						//1193	?????? ???
						AddNpcByPos( 1193 ,$ectype_id ,54,59,79200,0)
						AddNpcByPos( 1174 ,$ectype_id ,142,169,79200,0)
						SetEctypeVar($ectype_id,24,1)
						BC("screen","map",$ectype_id,"The instance has been completed!")
					BC("chat","map",$ectype_id,"Instance has been refreshed.")
					//???? 1
					SetEctypeVar(-1, 3, 7)
					endif
				//	if $vary < 3
				//		//1193	?????? ???
				//		AddNpcByPos( 1193 ,$ectype_id ,169,266,79200,0)
				//		SetEctypeVar($ectype_id,24,1)
				//
//			//		BC("chat","map",$ectype_id,"Instance has been refreshed.")
				//	//???? 1
				//	SetEctypeVar(-1, 3, 6)
				//	endif
			endif

}
function EctypeTimer3(){

		$ectype_id = GetEctypeID( -1 , 573 )
		$turn = GetEctypeVar(-1, 4)
		$level = GetEctypeVar($ectype_id,5)
		$flevel = GetEctypeVar($ectype_id,6)
		  if $turn == 0
		  //32474	???-?
		  $mon1 = 32474
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 82, 158, 1 ,0 ,180 )
			OpenMask(16,$ectype_id)
			SetEctypeVar($ectype_id,70,1)
			$mon1 = 32499
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,54, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,55, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,57, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,59, 64, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,63, 66, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,62, 68, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,58, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,54, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,53, 67, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,52, 68, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,51, 69, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 66, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,46, 65, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 64, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,47, 67, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,52, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,56, 69, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,46, 62, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,59, 71, 1 )
			else
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,54, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,55, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,57, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,59, 64, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,63, 66, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,62, 68, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,58, 70, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,54, 70, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,53, 67, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,52, 68, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,51, 69, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 66, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,46, 65, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 64, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,47, 67, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,52, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,56, 69, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 70, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,46, 62, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,59, 71, 1 )
			endif
			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 4, 1)
			endif
			if $turn == 1
//32467	??er
			OpenMask(15,$ectype_id)
			$mon1 = 32520
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 108, 238, 1 ,0 ,180 )
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$mon2 = 32529
			if $flevel > 0
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,42, 88, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,42, 96, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,39, 93, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,45, 93, 1 )
			else
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,42, 88, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,42, 96, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,39, 93, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,45, 93, 1 )
			endif
			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 4,2)
			endif
			if $turn == 2
			OpenMask(4,$ectype_id)
			//32465	???
	//		if $flevel > 0
	//	AddLevelFieldMonster( $mon1,259,$level,259,$flevel,1,$ectype_id,$posx, $posy, 1 )
	//else
	//	AddLevelMonster($mon1,259,$level,1,$ectype_id,$posx, $posy, 1)
	//endif
		//	$mon1 = 32465
		//	$level = GetEctypeVar($ectype_id,5)
		//	$flevel = GetEctypeVar($ectype_id,6)
		//	if $flevel > 0
		//	AddLevelFieldMonster( $mon1,259,$level,259,$flevel,1,$ectype_id,67, 105, 1 )
		//	else
		//	AddLevelMonster($mon1,259,$level,1,$ectype_id,67, 105, 1)
		//	endif
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$mon2 = 32515
			if $flevel > 0
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,67, 100, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,65, 101, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 103, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 105, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 107, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,66, 108, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,68, 109, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,69, 108, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,70, 106, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,70, 104, 1 )
			else
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,67, 100, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,65, 101, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 103, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 105, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 107, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,66, 108, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,68, 109, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,69, 108, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,70, 106, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,70, 104, 1 )
			endif
//			BC("screen","map",$ectype_id,"GUID:04030000040")
			SetEctypeVar(-1, 4, 3)
			endif
//JJJJJJJJJJJJJJJJJJJJJJJ
			if $turn == 3
			OpenMask(13,$ectype_id)
			//32465	???
			//32489	????
			//32490	????
			$mon1 = 32489
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 176, 211, 1 ,0 ,180 )
			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 4, 4)
			endif
			if $turn == 4

				//32464	????
				//32469	????
				//32470	????2
				//32485	????
			$mon1 = 32464
			$mon2 = 32469
			$mon3 = 32470
			$mon4 = 32485
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,93, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,87, 69, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,88, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,89, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,89, 71, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,90, 72, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,86, 69, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,85, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,84, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,83, 71, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,82, 72, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 72, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 73, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 73, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 74, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 72, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 73, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 74, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 75, 1 )
		//AddMonsterByFloat( $mon4 , 1, $ectype_id, 207, 185, 1 ,0 ,180 )
		//AddMonsterByFloat( $mon4 , 1, $ectype_id, 216, 190, 1 ,0 ,180 )
		//AddMonsterByFloat( $mon4 , 1, $ectype_id, 227, 190, 1 ,0 ,180 )
			else
			//AddLevelMonster($mon3,257,$level,1,$ectype_id,23, 63, 1)
			AddLevelMonster ( $mon1,258,$level,1,$ectype_id,93, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,87, 69, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,88, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,89, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,89, 71, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,90, 72, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,86, 69, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,85, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,84, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,83, 71, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,82, 72, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 72, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 73, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 73, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 74, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 72, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 73, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 74, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 75, 1 )
		//AddMonsterByFloat( $mon4 , 1, $ectype_id, 220, 168, 1 ,0 ,180 )
		//AddMonsterByFloat( $mon4 , 1, $ectype_id, 232, 179, 1 ,0 ,180 )
		//AddMonsterByFloat( $mon4 , 1, $ectype_id, 220, 192, 1 ,0 ,180 )


			endif

			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 4, 5)
			endif
			if $turn == 5
				//1193	?????? ???
			AddNpcByPos( 1193 ,$ectype_id ,218,182,79200,0)
			AddNpcByPos( 1174 ,$ectype_id ,142,169,79200,0)
			BC("screen","map",$ectype_id,"The instance has been completed!")
			BC("chat","map",$ectype_id,"The instance has been completed!")
			SetEctypeVar(-1, 22, 1)
			SetEctypeVar(-1, 4, 6)
			endif


}

function EctypeTimer4(){
		$ectype_id = GetEctypeID( -1 , 573 )
		$turn = GetEctypeVar(-1, 7)
		if $turn == 0
			//32532	????
			//32463	????

			$mon1 = 32463
			$mon2 = 32532
			$mon3 = 32501
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,24, 62, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,24, 61, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,25, 60, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,26, 59, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,27, 58, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,27, 57, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,25, 63, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,25, 63, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,26, 64, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,27, 57, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,28, 58, 1 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 77, 164, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 74, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 61, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 59, 161, 1 ,0 ,180 )
			else
			AddLevelMonster($mon1,258,$level,1,$ectype_id,24, 62, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,24, 61, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,25, 60, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,26, 59, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,27, 58, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,27, 57, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,25, 63, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,25, 63, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,26, 64, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,27, 57, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,28, 58, 1)
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 77, 164, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 74, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 61, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 59, 161, 1 ,0 ,180 )
			endif

			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 7, 1)
			endif
			if $turn == 1
			SetEctypeVar($ectype_id,70,1)
			AddNpcByPos( 1177 ,$ectype_id ,61, 158,79200,0)
			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 7, 2)
			endif
			if $turn == 2
			OpenMask(4,$ectype_id)
			//32465	???
			//$mon1 = 32465
			//$level = GetEctypeVar($ectype_id,5)
			//$flevel = GetEctypeVar($ectype_id,6)
			//if $flevel > 0
			//AddLevelFieldMonster( $mon1,259,$level,259,$flevel,1,$ectype_id,67, 105, 1 )
			//else
			//AddLevelMonster($mon1,259,$level,1,$ectype_id,67, 105, 1)
			//endif
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$mon2 = 32515
			if $flevel > 0
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,67, 100, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,65, 101, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 103, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 105, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,64, 107, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,66, 108, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,68, 109, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,69, 108, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,70, 106, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,70, 104, 1 )
			else
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,67, 100, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,65, 101, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 103, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 105, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,64, 107, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,66, 108, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,68, 109, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,69, 108, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,70, 106, 1 )
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,70, 104, 1 )
			endif
			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 7, 3)
			endif
//JJJJJJJJJJJJJJJJJJJJJJJ
			if $turn == 3
			OpenMask(13,$ectype_id)
			//32465	???
			//32489	????
			$mon1 = 32489
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 176, 211, 1 ,0 ,180 )


			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 7, 4)
			endif
			if $turn == 4
			//32509	???? ????boss
			//$mon1 = 32509
			//AddMonsterByFloat( $mon1 , 1, $ectype_id, 150, 181, 1 ,0 ,180 )
			$mon1 = 32499
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,54, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,55, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,57, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,59, 64, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,63, 66, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,62, 68, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,58, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,54, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,53, 67, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,52, 68, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,51, 69, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 66, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,46, 65, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 64, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,47, 67, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,52, 63, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,56, 69, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,48, 70, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,46, 62, 1 )
			AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,59, 71, 1 )
			else
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,54, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,55, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,57, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,59, 64, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,63, 66, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,62, 68, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,58, 70, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,54, 70, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,53, 67, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,52, 68, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,51, 69, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 66, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,46, 65, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 64, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,47, 67, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,52, 63, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,56, 69, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,48, 70, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,46, 62, 1 )
			AddLevelMonster( $mon1,256,$level,1,$ectype_id,59, 71, 1 )
			endif
			SetEctypeVar(-1, 7, 5)
			endif
			if $turn == 5
			OpenMask(11,$ectype_id)
			//32464	????
				//32469	????
				//32470	????2
				//32464	????
				//32469	????
				//32470	????2
				//32485	????
			$mon1 = 32464
			$mon2 = 32469
			$mon3 = 32470
			$mon4 = 32485
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,93, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,87, 69, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,88, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,89, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,89, 71, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,90, 72, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,86, 69, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,85, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,84, 70, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,83, 71, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,82, 72, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 72, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 73, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 73, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,84, 74, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 72, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 73, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 74, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 75, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 74, 1 )
			AddLevelFieldMonster( $mon3,256,$level,256,$flevel,1,$ectype_id,88, 75, 1 )
			
			else
			//AddLevelMonster($mon3,257,$level,1,$ectype_id,23, 63, 1)
			AddLevelMonster ( $mon1,258,$level,1,$ectype_id,93, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,87, 69, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,88, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,89, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,89, 71, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,90, 72, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,86, 69, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,85, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,84, 70, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,83, 71, 1 )
			AddLevelMonster ( $mon2,256,$level,1,$ectype_id,82, 72, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 72, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 73, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 73, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,84, 74, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 72, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 73, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 74, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 75, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 74, 1 )
			AddLevelMonster ( $mon3,256,$level,1,$ectype_id,88, 75, 1 )
		



			endif

			//BC("screen","map",$ectype_id,"Instance has been refreshed.")
			SetEctypeVar(-1, 7, 6)
			endif
			if $turn == 6
				//1193	?????? ???
			AddNpcByPos( 1193 ,$ectype_id ,218,182,79200,0)
			AddNpcByPos( 1174 ,$ectype_id ,142,169,79200,0)
			BC("screen","map",$ectype_id,"The instance has been completed!")
			BC("chat","map",$ectype_id,"The instance has been completed!")
			SetEctypeVar(-1, 23, 1)
			SetEctypeVar(-1, 7, 7)
			endif


}
function Count_Down_29(){
		$ectype_id = GetEctypeID( -1 , 573 )
		$varline = GetEctypeVar($ectype_id,0)
		$count_left = GetEctypeVar($ectype_id,64)
		$count_line = GetEctypeVar($ectype_id,1)
		if $varline == 1
			if $count_line < 6
				if $count_left > 0
					if $count_left <= 30
					$count_left = $count_left - 1
					BC("screen","map",$ectype_id,"Pyrope will notice you in ",$count_left," sec.")
					SetEctypeVar($ectype_id,64,$count_left)
					StartEctypeTimer($ectype_id,5)
					endif
				endif
				if $count_left == 0
					SetEctypeVar($ectype_id,64,0)
					SetEctypeVar($ectype_id,65,0)
					BC("screen","map",$ectype_id,"Azura has awakened!")
					SetEctypeVar($ectype_id,69,1)
				endif  
			endif
		endif

}
function Count_Down_10(){
		$ectype_id = GetEctypeID( -1 , 573 )
		$varline = GetEctypeVar($ectype_id,0)
//		BC("screen","map",$ectype_id,"GUID:04030000055")
		$count_left = GetEctypeVar($ectype_id,64)
		$sametime = GetEctypeVar($ectype_id,16)
		if $varline == 32
			if $count_left > 0
				if $count_left <= 10
					if $sametime == 1
						$count_left -= 1 
						SetEctypeVar($ectype_id,64,$count_left)
						BC("screen","map",$ectype_id,"Destroy the source of Iceflame! Time remaining: ",$count_left," sec.")
						StartEctypeTimer($ectype_id,6)
					endif
					if $sametime == 2
						StartEctypeTimer($ectype_id,2)
						SetEctypeVar($ectype_id,64,0)
						BC("screen","map",$ectype_id,"Successfully destroyed the source of Iceflame!")
					endif
				endif
			endif
			if $count_left == 0
			BC("screen","map",$ectype_id,"Failed to destroy the source of Iceflame!")
			SetEctypeVar($ectype_id,64,0)
			endif
		endif
	
}
function Count_Down_60(){
		$ectype_id = GetEctypeID( -1 , 573 )
		$varline = GetEctypeVar($ectype_id,0)
		$count_left = GetEctypeVar($ectype_id,64)
			if $count_left > 0
				if $count_left <= 60
				$count_left -= 1
				SetEctypeVar($ectype_id,64,$count_left)	
				BC("screen","map",$ectype_id,"Time remaining: ",$count_left," sec.")
				StartEctypeTimer($ectype_id,7)
				return
				endif
			endif
			if $count_left == 0
				$countmon = GetEctypeVar($ectype_id,42)
				SetEctypeVar($ectype_id,64,0)
				SetEctypeVar($ectype_id,65,0)
				BC("screen","map",$ectype_id,"Darkshadow Trial has ended! Monsters killed: ",$countmon,"/50")
				if $countmon >= 50
					BC("screen","map",$ectype_id,"Successfully completed the Darkshadow Trial! Received Crystal Fragment x1!")
					$count_award = GetEctypeVar($ectype_id,8)
					$count_award += 1
					SetEctypeVar($ectype_id,8,$count_award)
					DeleteMonster($ectype_id,32488)
				endif
				if $countmon < 50
					BC("screen","map",$ectype_id,"Sorry, you did not complete the Trial!")
					DeleteMonster($ectype_id,32488)
					SetEctypeVar($ectype_id,88,2)
				endif
			endif

}


function add_shuijin(){
		
			$mon1 = 32526
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 118, 233, 1 ,0 ,180 )
			$mon1 = 32504
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 102, 256, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 78 , 223, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 83 , 199, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 97 , 163, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 144, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 166, 161, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 113, 170, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 122, 140, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 168, 138, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 245, 179, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 216, 158, 1 ,0 ,180 )
			//AddMonsterByFloat( $mon1 , 1, $ectype_id, 188, 274, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 153, 293, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 142, 253, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 197, 268, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 132, 178, 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 90 , 92 , 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 52 , 55 , 1 ,0 ,180 )
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 231, 190, 1 ,0 ,180 )
		
	}