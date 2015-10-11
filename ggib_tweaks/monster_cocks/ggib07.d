EXTEND_BOTTOM WSMITH01 13
	IF ~OR(3)
			PartyHasItem("wand06")
			PartyHasItem("wand07")
			PartyHasItem("wand11")~ THEN GOTO ggib_ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN ggib_ItemUp00 SAY ~Nice cock selection you have!~
		IF ~
			PartyHasItem("wand06")
			PartyHasItem("wand07")
			PartyHasItem("wand11")~ THEN GOTO ggib_ItemUp02
		IF ~OR(3)
			!PartyHasItem("wand06")
			!PartyHasItem("wand07")
			!PartyHasItem("wand11")~ THEN GOTO ggib_ItemUp01
	END
  
	IF ~~ THEN BEGIN ggib_ItemUp01 SAY ~If you bring me Wands of Frost, Lightning and Heavens I could combine them for you!~
		IF ~~ THEN GOTO ggib_NoItemUp
	END
  
	IF ~~ THEN BEGIN ggib_ItemUp02 SAY ~Ah, you have Wands of Frost, Lightning and Heavens! For 20000 pieces I can transform it into a Monster Cock of Precise Penetration!~
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO ggib_NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("ggib_ItemUp","ar0334",7)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("wand06",1)
													 DestroyItem("wand06")
													 TakePartyItemNum("wand07",1)
													 DestroyItem("wand07")
													 TakePartyItemNum("wand11",1)
													 DestroyItem("wand11")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO ggib_NoItemUp
	END

	IF ~~ THEN BEGIN ggib_NoItemUp SAY ~Let's see what else we can find.~
		COPY_TRANS WSMITH01 13
	END
END