EXTEND_BOTTOM WSMITH01 13
	IF ~OR(3)
			PartyHasItem("wand02")
			PartyHasItem("wand04")
			PartyHasItem("wand08")~ THEN GOTO ggib_ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN ggib_ItemUp00 SAY ~Nice cock selection you have!~
		IF ~
			PartyHasItem("wand02")
			PartyHasItem("wand04")
			PartyHasItem("wand08")~ THEN GOTO ggib_ItemUp02
		IF ~OR(3)
			!PartyHasItem("wand02")
			!PartyHasItem("wand04")
			!PartyHasItem("wand08")~ THEN GOTO ggib_ItemUp01
	END
  
	IF ~~ THEN BEGIN ggib_ItemUp01 SAY ~If you bring me Wands of Sleep, Paralization and Fear I could combine them for you!~
		IF ~~ THEN GOTO ggib_NoItemUp
	END
  
	IF ~~ THEN BEGIN ggib_ItemUp02 SAY ~Ah, you have Wands of Sleep, Paralization and Fear! For 20000 pieces I can transform it into a Monster Cock of Scaring!~
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO ggib_NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("ggib_ItemUp","ar0334",8)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("wand02",1)
													 DestroyItem("wand02")
													 TakePartyItemNum("wand04",1)
													 DestroyItem("wand04")
													 TakePartyItemNum("wand08",1)
													 DestroyItem("wand08")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO ggib_NoItemUp
	END

	IF ~~ THEN BEGIN ggib_NoItemUp SAY ~Let's see what else we can find.~
		COPY_TRANS WSMITH01 13
	END
END