/* If you're reading this, you are a sick, sick person. */

APPEND BHAERDA
IF WEIGHT #-1 ~Global("CJPerversion","GLOBAL",0)
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)~ THEN BEGIN wank1
SAY ~Noble comrades, fellow players one and all, might we four fine fellows partake in a scene of our own apart from the ears of our raven?~
= ~'Tis a matter which, left bottled, may come to soil, that is to say to spoil our concentration, at the most inopportune of moments.~
IF ~~ THEN GOTO wankrowan
IF ~!InParty("Viconia")
!InParty("Aerie")
InParty("Nalia")~ THEN GOTO wanknalia
IF ~!InParty("Viconia")
InParty("Aerie")~ THEN GOTO wankaerie
IF ~InParty("Viconia")~ THEN GOTO wankviconia
END

IF ~~ THEN BEGIN wankviconia
SAY ~Have none of you taken a long, contemplative gaze into the eyes of our dusky mistress of pain and suffering? Or let your eyes be your fingers and caress her every curve from afar?~ =
~Which is darker, her soul or the pleasures that might await us all at her hands, her teeth, her mystical words of rapture and domination, all whilst trapped writhing 'neath her cool, perfect figure?~
IF ~~ THEN GOTO wankchain
END

IF ~~ THEN BEGIN wankaerie
SAY ~Jewel of this sparrow's eye, yet share my dove with my fellows I gladly would. Ah, to touch, to taste Aerie, 'tis near a forbidden fruit, yet not foreboding.~ =
~Of Aerie, I challenge any man to say other than that the ecstasy to claim her maidenhead would be overshadowed only by the ecstasy of answering her plea for an encore performance?~
IF ~~ THEN GOTO wankchain
END

IF ~~ THEN BEGIN wanknalia
SAY ~I ask you truly to cast your eye upon our lady of the mystical arts. With such nimble hands, an understanding of the arcane, and a rump made for riding, who among us can say we are unmove'd?~ =
~Nay, not the choice of kings, but of dukes, royalty, petty bourgeoisie... and what man could resist intimately knowing the gentle submission of a lady born and the aggressive drive for self-satisfaction of a woman of the streets?~
IF ~~ THEN GOTO wankchain
END

IF ~~ THEN BEGIN wankrowan
SAY ~Our newest companion wishes to lose her remembrance of the past, wipe clean the slate, and bury the spectres that haunt her so. I say to you, my fellows, that to bury mine own head 'tween her delicious breasts would absorb the pain of a lifetime.~ =
~Were she only to give the word, I would trace every scar of her visage with all appendages, and silence the screams of her victims with the screams of desire.~
IF ~~ THEN GOTO wankchain
END
END


CHAIN BHAERDA wankchain

~Can any of you say that you have not looked upon that treasure of the fairer form and felt stir in your loins that which makes us men?~
== BKELDOR ~By Torm, man, what are you sa... what are you DOING?~
== BHAERDA ~Nay, deny it not, for all of us are men, and as men we needs must have needs which must be satisfied.~ 
= ~I bare my soul to you as a man in need of relief, and I bear my root that is the root of mine problem. I stand ready to plant my seed aground, in cooperation and company with these upon whom my every breath depends.~
= ~Do I have your cooperation for this performance? Do not let my audition of potency fall unappreciated!~
== BANOMEN ~By... by all that is holy, man, pull up your breeches! Have you no decency at all, degenerate?~
== BJ#KLSY ~Haer'Dalis, we... uh. I don't think we're interested in whatever this is.~
== BHAERDA ~The only true degeneracy is to deny our very nature, as though to deny the sun its hours to shine, my pigeon.~
= ~Lord Keldorn, noble hound, do you not agree that distractions of unanswered lust make for a dangerous liability? Surely to serve, a knight must not feel undue pressure from any of his equipage, be it plate or codpiece?~
== BKELDOR ~I... I have heard it told that in some training... circles, that yes, such release was encouraged before a great battle, to calm the nerves and build comradeship.~
== BHAERDA ~Merely "heard", my hound?~
== BANOMEN ~Bah! Enough of this! You will stop this offensive display at once!~
== BHAERDA ~The only offensive display will be to watch you keel over when we are beset by foes because yon staff is at full mast and unbalances your already comical fighting style.~
= ~Friends, the time for discussion is over. I hear the blood rushing even now, the scene is written, our parts are clearly cast. 'Tis indeed the greatest tribute we four can give to our lady companion, to honor her so. And 'tis far too late to take back the thoughts we all entertain.~
== BJ#KLSY ~Yes, but YOU'RE the one who got us thinking about her in the first place! I was perfectly content to mind my own business and just think about her in private!~
== BANOMEN ~I must admit, Keldorn, that my focus may benefit from... such a training regimen... I...~
== BKELDOR ~Say no more, my approval is not needed. Perhaps I am not too old to learn of new things.~
== BHAERDA ~Come, sorcerous sandpiper, let fly your robe! The hounds have joined the hunt, will you make our three legged ring stronger with the addition of your third leg?~
== BJ#KLSY ~I... uh... oh, dammit, I can't stop thinking about her anyway. Just help me watch for anyone else sneaking up, and please, don't use any more pet names for us today, okay?~
== BHAERDA ~Ohhhhh... the dance is joined, my fellows... (mmmmmm...) but let us not lose pace with our fellows! 'Tis an interlocked dance, each of us apart yet linked in the rhythm...~
== BJ#KLSY ~Let's... (mmmmmm...) let's talk about this less. (Uuuuuhhhhhh.)~
== BKELDOR ~I... (rrrrrruuuuuuhhh...) I can think of none but my dearest Maria...~
== BHAERDA ~(Uuuuurrrrmmmm...) oh, yes, add her to our festival! (Yaaaargh!) No comers shall be denied their day in our dance!~
== BANOMEN ~(hhhhmmmmrrrrruuuuuhhhhh...) Are... are we to strive for distance? (hhhhhhhrrraaaaahhh...)~
== BHAERDA ~'Tis not a competition, 'tis only a goal. (mmmmmmuuuhhhh...) The curtain call, that's the thing, when the sandbags have been relieved of their weighty responsibility. (eeeeerrrruuuhhhhhmmmmmm...)~
== BKELDOR ~(uhhhhhrrr...)~
== BJ#KLSY ~(rrrrrraaaaahhhh...)~
== BANOMEN ~(mmmmmmuuuuuuurrrrrrhhhhh...)~
== BHAERDA ~Oh, my noble companions, pigeons and hounds and sandpipers all, I... the moment is upon me... I... aaaaaaahhhhhh...~ = ~At last! Oblivionnnnn... ohhhh! Uhhhnnnn...~ [HAERDA15]
== BJ#KLSY ~Oh, Wau... oh, move out of the wa... ah... AAAAAAAAAARRRRRRRRRRHHHHHHHHH...~
== BANOMEN ~I... (rraaaaahhh...) Helm preserve me, I... OHHHHHHHHHRRRRRRRR! RRRRRR!~
== BKELDOR ~(mmmmmrrrr...) MRRRRRRRAAAAH.~ = ~Ah.~ = ~Oh.~
== BANOMEN ~In... indeed...~
== BJ#KLSY ~These things... don't end well, do they?~
== BHAERDA ~'Tis as any closing night... final curtain comes too fast, too suddenly, and by time we players think to reflect upon our performance, the magic of the hour is gone.~
== BKELDOR ~As a... veteran campaigner, I suggest we keep the day's events between us. For the sake of morale.~
== BANOMEN ~I cannot but agree, Keldorn... allow me to kick some dirt over THAT first, and we shall be on our way and speak of this not at all, if possible.~
END BJ#KLSY wankend

APPEND BJ#KLSY
IF ~~ THEN BEGIN wankend
SAY ~Ugh. This robe definitely needs cleaning now...~
IF ~~ THEN DO ~SetGlobal("CJPerversion","GLOBAL",1)~ EXIT
END
END

