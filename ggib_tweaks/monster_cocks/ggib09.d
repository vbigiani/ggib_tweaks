EXTEND_BOTTOM WSMITH01 13
	IF ~OR(3)
			PartyHasItem("staf11")
			PartyHasItem("blun10")
			PartyHasItem("blun22")~ THEN GOTO ggib_ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN ggib_ItemUp00 SAY ~Nice cock selection you have!~
		IF ~
			PartyHasItem("staf11")
			PartyHasItem("blun10")
			PartyHasItem("blun22")~ THEN GOTO ggib_ItemUp02
		IF ~OR(3)
			!PartyHasItem("staf11")
			!PartyHasItem("blun10")
			!PartyHasItem("blun22")~ THEN GOTO ggib_ItemUp01
	END
  
	IF ~~ THEN BEGIN ggib_ItemUp01 SAY ~If you bring me the Staff of Magi, the Root of the Problem and Blackblood I could combine them for you!~
		IF ~~ THEN GOTO ggib_NoItemUp
	END
  
	IF ~~ THEN BEGIN ggib_ItemUp02 SAY ~Ah, you have a the Staff of Magi, the Root of the Problem and Blackblood! For 40000 pieces I can transform it into a Monster man-club of the Magi!~
		IF ~PartyGoldLT(40000)~ THEN REPLY #66662 GOTO ggib_NoItemUp
		IF ~PartyGoldGT(39999)~ THEN REPLY #66664 DO ~SetGlobal("ggib_ItemUp","ar0334",9)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(40000)
													 DestroyGold(40000)
													 TakePartyItemNum("staf11",1)
													 DestroyItem("staf11")
													 TakePartyItemNum("blun10",1)
													 DestroyItem("blun10")
													 TakePartyItemNum("blun22",1)
													 DestroyItem("blun22")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO ggib_NoItemUp
	END

	IF ~~ THEN BEGIN ggib_NoItemUp SAY ~Let's see what else we can find.~
		COPY_TRANS WSMITH01 13
	END
END