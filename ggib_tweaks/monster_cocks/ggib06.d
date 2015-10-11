EXTEND_BOTTOM WSMITH01 13
	IF ~OR(2)
			PartyHasItem("wand05")
			PartyHasItem("wand13")~ THEN GOTO ggib_ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN ggib_ItemUp00 SAY ~Nice cock selection you have!~
		IF ~
			PartyHasItem("wand05")
			PartyHasItem("wand13")~ THEN GOTO ggib_ItemUp02
		IF ~OR(2)
			!PartyHasItem("wand05")
			!PartyHasItem("wand13")~ THEN GOTO ggib_ItemUp01
	END
  
	IF ~~ THEN BEGIN ggib_ItemUp01 SAY ~If you bring me a Wand of Flame and a Wand of Cloudkill I could combine them for you!~
		IF ~~ THEN GOTO ggib_NoItemUp
	END
  
	IF ~~ THEN BEGIN ggib_ItemUp02 SAY ~Ah, you have a Wand of Flame and a Wand of Cloudkill! For 20000 pieces I can transform it into a Monster Cock of Cum Splatter!~
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO ggib_NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("ggib_ItemUp","ar0334",6)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("wand05",1)
													 DestroyItem("wand05")
													 TakePartyItemNum("wand13",1)
													 DestroyItem("wand13")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO ggib_NoItemUp
	END

	IF WEIGHT #-1 ~OR(2) GlobalGT("ggib_Craft","ar0334",0) GlobalGT("ggib_ItemUp","ar0334",0)~ THEN BEGIN ggib_CRAFT SAY #59797
		IF ~~ THEN DO ~SetGlobal("ggib_Craft","ar0334",0) SetGlobal("ggib_ItemUp","ar0334",0)~ EXIT
	END

	IF ~~ THEN BEGIN ggib_NoItemUp SAY ~Let's see what else we can find.~
		COPY_TRANS WSMITH01 13
	END
END