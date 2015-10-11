// Dialogue for Square

APPEND BJAHEIR
  IF WEIGHT #-1  ~Global("SQUAREMOD","GLOBAL",2)~ THEN squaremod_prep_init
  SAY ~I demand that we set camp here. I'm growing tired.~
    ++ ~Very well.~ + squaremod_prep_seq1
    ++ ~Can we press forward another bit?~ EXTERN IMOEN2J squaremod_prep_force
  END
END

CHAIN IF ~~ THEN IMOEN2J squaremod_prep_force
    ~I'm tired too. Can we please stop?~
  == BNALIA
    ~Auntie said not to walk too long each day, because I could catch a cold.~
  == BMAZZY
    ~I'm tired, let's stop.~
  == BJAHEIR
    ~<CHARNAME>, I suggest you to stop, if our company is valuable to you.~
END
  ++ ~Sigh, very well, you won. Let's make camp here.~ EXTERN BJAHEIR squaremod_prep_seq1

CHAIN IF ~~ THEN BJAHEIR squaremod_prep_seq1
    ~<CHARNAME>, could you and Mazzy look for some wood for the campfire while I conjure some Goodberries for us to eat?~
  =
    ~Imoen, don't stand still, begin to search for the components to cast Burning Hands on the wood once <CHARNAME> manages to find some!~
  == IMOEN2J
    ~Jaheira, I finished them because we have been fighting trolls, and...~
  == BNALIA
    ~Don't worry, Imoen, I still have one left.~
  == BJAHEIR
    ~Well, in that case, Imoen, could you arrange some stones and prepare the fire site?~
  == IMOEN2J
    ~Yes, Madam.~
  =
    ~Oh, look, Jaheira, <CHARNAME> is back. Hey, <PRO_BROTHERSISTER>, where did you find those rabbits?~
END
  ++ ~I found them in an hunter's trap. They were dead already.~ EXTERN BMAZZY squaremod_prep_seq2a
  ++ ~They looked like a good target for my bow.~ EXTERN BJAHEIR squaremod_prep_seq2b

CHAIN IF ~~ THEN BMAZZY squaremod_prep_seq2a
    ~And, I know a good recipe...~
EXTERN BMAZZY squaremod_prep_seq3

CHAIN IF ~~ THEN BJAHEIR squaremod_prep_seq2b
    ~They were poor animals, there was no reason to kill them!~
  == IMOEN2J
    ~Perhaps that's right, but is eating meat this revolting to you?~
  == BJAHEIR
    ~That's a very good excuse for a violent murder to you city dwellers, of that I'm sure.~
  == BMAZZY
    ~Wait a moment, I know a good recipe for them...~
  == BJAHEIR
    ~Sigh, very well, I suppose I'll let this one pass. Just don't cannibalize on a fellow animal near my sight.~
EXTERN BMAZZY squaremod_prep_seq3

CHAIN IF ~~ THEN BMAZZY squaremod_prep_seq3
    ~Imoen, could you fill this cup with water? Nalia, don't stand still, light up a fire!~
  == BNALIA
    ~Very well.~
  == BMAZZY
    ~The rabbits smell very good. Prepare for a good eating, all!~
  == IMOEN2J
    ~Ugh, the last time Montaron tried to prepare something to eat I suddenly dropped all my expectactions for an Halfling cook.~
  == BJAHEIR
    ~Please, Imoen, don't remind me about that. Goodberries are already enough boring to eat without you discussing about how to enjoy the life of a rabbit!~
  == IMOEN2J
    ~It wasn't me who decided to become a druid and eat only vegetables.~
  == BJAHEIR
    ~Grrr..~
  == BNALIA
    ~Yes, I believe that Imoen is correct. This stew smells delicious - not like the one <CHARNAME> made out of my poor dogs and gave to the hulks in my keep.~
  == BJAHEIR
    ~Enough! I'll set up my own camp three hundreds feet to the north if you can't accept my life choices. Come and call me when we're ready to start out tomorrow morning.~
  == BMAZZY 
    ~Well, your loss, Jaheira.~
  =
    ~Hey, everybody, come here! It's ready!~
  == BJAHEIR
    ~Shut up, I don't want to hear anything about that!~
  == IMOEN2J
    ~You know something? I take that back about Halfling cooks. This rabbit is really refreshing.~
  == BNALIA
    ~Yes, it's even better than the one Nella used to prepare at the Keep.~
  == BMAZZY
    ~Thanks for your compliments. I hope Jaheira doesn't get offended, but Goodberries are really boring, even if they can heal your wounds.~
  == IMOEN2J
    ~Totally.~
  == BNALIA
    ~Good night, everybody!~
  == BMAZZY
    ~Good night.~
  == IMOEN2J
    ~Night...~
  =
    ~Nalia, my bedroll seems to be broken and it's getting too chilly in here. Do you mind sharing your one with me?~
  == BNALIA
    ~Well, I suppose it won't hurt.~
  =
    ~You know, Imoen, it doesn't actually taste bad at all...~
  == IMOEN2J
    ~Ahh.. Just go on..~
  == IMOEN2J IF ~Gender(Player1,MALE)~ THEN
    ~That's (Uuhh) that's what I used to think, but when <CHARNAME> did this to me, he uuhsed to say that it tasted very good.~
  =
    ~Continue, please, continue!~
  == IMOEN2J IF ~Gender(Player1,FEMALE)~ THEN
    ~<CHARNAME>'s one was veeery good, too-ooh, please go on, go on!~
  == BNALIA
    ~Do you like it?~
  == IMOEN2J
    ~Yes, yes, YES!~
  =
    ~Ooohhh....~ [IMOEN19]
  == BNALIA
    ~Now it's my turn...~
  == IMOEN2J
    ~Aaahh, eew, don't talk, you're ruining the moment...~
  =
    ~Very well, open your legs, give me room...~
  == BNALIA
    ~Yes, I can't wait for this...~
  == IMOEN2J
    ~Eww, what's this? Did you cut yourself? You're bleeding pretty badly...~
  == BNALIA
    ~No, Imoen, I'm having a period. Did you never experience these?~
  == IMOEN2J
    ~No, I did not; however, I've heard many women talk about it. What is that?~
  == BNALIA
    ~Well, simply put, when girls turn to womanhood they start to bleed from our love hole every month.~
  == IMOEN2J
    ~Oh, I believe it's the Bhaalspawn side that prevented me from having these things. At least something good turned up from that...~
  =
    ~Here, I borrowed the Ring of Regeneration from <CHARNAME>, maybe it could help..~
  == BNALIA
    ~Yes, the bleeding seems to have stop. Thanks, Imoen.~
  =
    ~Now, start to work with that tongue!~
  == IMOEN2J
    ~Yes, Mistress...~
  == IMOEN2J IF ~Gender(Player1,MALE)~
    ~Yummy, so it does taste good after all!~
  == IMOEN2J IF ~Gender(Player1,FEMALE)~
    ~It's even better than <CHARNAME>'s one, it's so sweet...~
  == BNALIA
    ~Less talk, more licking...~
  =
    ~Uuhh, yeah, uuh, yeah, yes, yes, YES!~
  =
    ~Oooh...~ [NALIA14]
  == IMOEN2J
    ~We should do this more often.~
  == BNALIA
    ~Yes, I would like to spend all this night and tomorrow and the day after this doing just this...~
  == IMOEN2J
    ~You know, before all of this started, <CHARNAME> and I used to go out hiking and spend the night doing this or similar games... it was just heaven.~
  == BNALIA
    ~Did you say you know of more similar plays?~
  == IMOEN2J
    ~You betcha.~
  == BNALIA
    ~Then what are you waiting for?~
    DO ~SetGlobal("SQUAREMOD","GLOBAL",3)
      RestParty()~
EXIT

// dialogue for Triangle

CHAIN IF WEIGHT #-1 ~Global("TRIANGLEMOD","GLOBAL",3)~ THEN BANOMEN triangle_start
    ~Hold on, girl. I noticed you have slept with Nalia also tonight. It is not right for two women to sleep together.~
  == IMOEN2J
    ~So what's the problem, oh so pompous Anomen?~
  =
    ~My bedroll is broken and I am sharing Nalia's one, because I don't want to catch a cold. Or were you asking me to share yours?~
  BRANCH ~OR(2) Global("ANOMENROMANCEACTIVE","GLOBAL",1) Global("ANOMENROMANCEACTIVE","GLOBAL",2)~ BEGIN
    == IMOEN2J
      ~I'm sure <CHARNAME> would be mad at me because I'm prettier than her and I tricked her boyfriend into sleeping with me, and I don't want to have her mad.~
    == BANOMEN
      ~Stop putting words in my mouth, girl!~
  END
  == BNALIA
    ~Imoen is not sleeping with you, Anomen. After experiencing her tongue tricks, I am not going back to sleeping alone.~
  == BANOMEN
    ~So we have come to that? Filthy lesbians in our party? I shall have you executed right now in Helm's name!~
  == IMOEN2J
    ~Nuh-uh, you aren't scaring me by swinging that war hammer. <PRO_BROTHERSISTER> would kill you for trying to hurt <PRO_HISHER> little sis.~
  == BNALIA
    ~And you would be out of luck attacking us - I just bought today a spell of Protection from Homophobia in 10' radius.~
  == BANOMEN
    ~These things are immoral, you can't continue doing that!~
  == IMOEN2J
    ~Huh, so the guy who jerked off in front of three other males is giving us a lecture about immorality of love. How touching.~
  == BNALIA
    ~Imoen, what is jerking off?~
  == IMOEN2J
    ~It's... Nevermind, we have much better things to explore tonight.~
  == BANOMEN
    ~What are you talking about, Imoen? I never played with my one-eyes holy snake!~
  == IMOEN2J
    ~So that night when you were in a Circle with Haer Dalis, Keldorn and Kelsey all of you three got itchy all of sudden near your crotch?~
  == BANOMEN
    ~I... How do you know that?~
  == IMOEN2J
    ~I saw it. I was on guard duty, remember?~
END
IF ~!Global("ANOMENROMANCEACTIVE","GLOBAL",1) !Global("ANOMENROMANCEACTIVE","GLOBAL",2)~ EXTERN BANOMEN triangle_no_ano_romance
IF ~OR(2) Global("ANOMENROMANCEACTIVE","GLOBAL",1) Global("ANOMENROMANCEACTIVE","GLOBAL",2)~ EXTERN BANOMEN triangle_ano_romance

APPEND BANOMEN
  IF ~~ THEN BEGIN triangle_ano_romance
  SAY ~Very well. You won this time, girl. I'll let your affair with Nalia go, as I don't want you to tell <CHARNAME> about that.~
    IF ~~ THEN EXTERN IMOEN2J triangle_nalia_and_imoen_eat
  END
END

CHAIN IF ~~ THEN IMOEN2J triangle_nalia_and_imoen_eat
    ~Now, Nalia, where did we leave yesterday night?~
  == BNALIA
    ~I recall it was my turn taking.~
  == IMOEN2J
    ~Very well, I'll begin immediatly.~
  == BNALIA
    ~Oooh...~ [NALIA14]
    DO ~SetGlobal("TRIANGLEMOD","GLOBAL",4)  RestParty()~
EXIT

CHAIN IF ~~ THEN BANOMEN triangle_no_ano_romance
    ~So you saw it, eh? And you say that scratching is not good? Perhaps you and Nalia can provide me a better experience tonight.~
  == IMOEN2J 
    ~Hey, put that armor piece back where it was supposed to be, you pervert!~
  == BNALIA 
    ~Imoen, what is that small thing hanging from his abdomen?~
END
IF ~Gender(Player1,MALE)~ EXTERN IMOEN2J triangle_imoen_can_bj
IF ~Gender(Player1,FEMALE)~ EXTERN IMOEN2J triangle_imoen_cannot_bj

CHAIN IF ~~ THEN IMOEN2J triangle_imoen_can_bj
    ~It should be a cock, but <CHARNAME>'s one was much bigger and harder.~
  = 
    ~Hey, I have an idea. Just watch, Nalia.~ 
  = 
    ~(administers oral sex)~
  == BANOMEN 
    ~Ooh...~ [ANOMEN14]
  = 
    ~(passes out on the ground)~
  == BNALIA 
    ~Hey, it looks like men really have no resistance. No wonder all good sex play is between two women.~
  == IMOEN2J 
    ~I used to do quite a lot of those with <CHARNAME> back before it all began, so I can't but confirm: men always get tired before real fun begins.~
END IMOEN2J triangle_nalia_and_imoen_eat

CHAIN IF ~~ THEN IMOEN2J triangle_imoen_cannot_bj
    ~What? you have never seen a naked man?~ 
  = 
    ~Granted, his one is very short, when compared to the other three I saw that night, but nevermind this.~
  == BNALIA 
    ~I read some descriptions in Auntie books, but never saw a naked man, though.~
  == BANOMEN 
    ~It's not small, girl, and dimensions don't matter anyway!~
  == BNALIA 
    ~Tee-hee, look at how it's tiny! Are they really supposed to be that small? Or to hang lifeless like that?~
  == BANOMEN 
    ~Enough! You two will have a Triangle with me and you'll enjoy it!~
  == IMOEN2J 
    ~Hold on, master, didn't you say that lesbians are bad?~
  == BANOMEN 
    ~It doesn't matter, you'll still do that!~
  == BNALIA 
    ~Abracadabra! (casts Protection from Homophobia in 10' radius)~
  == BANOMEN 
    ~Ooh...~ [ANOMEN14] 
  =
    ~(falls to the ground)~
  == IMOEN2J 
    ~Good idea buying that spell, Nalia.~
END IMOEN2J triangle_nalia_and_imoen_eat


// dialogue for Octagon
// Imoen & Nalia vs. Anomen, Minsc, Valygar, Haer Dalis, Korgan, Edwin
CHAIN IF WEIGHT #-1 ~Global("OCTAGONMOD","GLOBAL",3)~ THEN IMOEN2J octagon_start
    ~I'm bored, bored, BORED!~
  == BNALIA
    ~What's the matter, dear Imoen?~
  == IMOEN2J
    ~Since all this fuss about me being <CHARNAME>'s sister, he feels obliged not to give me a good fucking like he used to, and I'm starting to get sand in my pussy.~
  =
    ~Your tongue can only go so much deep.~
  == BNALIA
    ~Wha-what? I thought you liked me licking you - I do sure enjoy when you do it to me.~
  == IMOEN2J
    ~Oh, sorry, Nalia, it's just that I miss the good old throbbing sensation of a cock inside me.~ 
  = 
    ~Don't you?~
  == BNALIA
    ~No, Imoen, I don't, Auntie didn't want me to do that, something to do with the hymen...~
  == IMOEN2J
    ~Bah, Auntie told me not to do this, Auntie told me not to do this... You're starting to get boring~ 
  = 
    ~Hey, how about giving you some proper introdution to vaginal sex?~
  == BNALIA
    ~What do you mean?~
  == IMOEN2J
    ~Do you see all these men? I say, I pick three and you pick three, and then we have lots of sex with multiple men. Sounds like a plan?~
  == BNALIA
    ~But, do you think they are going to accept?~
  == IMOEN2J
    ~Worry not, most men are such sex-deprived wrecks of humanity that they won't turn down a little pussy when they can have one. I'll choose my one first.~ 
  = 
    ~Hey, Korgan!~
  == BKORGAN
    ~Ach? What ye want?~
  == IMOEN2J
    ~I wanted to have lots of sex tonight, and I need a man - uh, male dwarf - to be able to do that.~
  == BKORGAN
    ~Och, count me in, lad! Har, har!~
  == IMOEN2J
    ~Nalia, your turn choosing.~
  == BNALIA
    ~This seems to be working...~ 
  = 
    ~Minsc, I have a problem, could you help me?~
  == BMINSC
    ~Yes, Nalia, what is wrong with you? Do you need me to impress my boots into the backside of evil?~
  == BNALIA
    ~Er, no, not now. I have an evil monster inside me, can you smite it with your third leg?~
  == BMINSC
    ~Ohoh, this sounds like a good plan! Can Boo take part too?~
  == BNALIA
    ~Er, I can summon a female Miniature Giant Space Hampster if he really wants.~
  == IMOEN2J
    ~My turn.~ 
  = 
    ~Anomen? Do you want more pole cleansing like the last one?~
  == BANOMEN
    ~Yes! Helm be praised, my prayers didn't go unanswered.~
  == BNALIA
    ~Up to me.~ 
  = 
    ~Haer Dalis, are you ready for some real love poetry?~
  == BHAERDA
    ~Sounds like a plan, dear nest of my love sparrow.~
  == IMOEN2J
    ~Valygar, I discovered an intimate ritual that will remove all magical influences on you. Are you ready to partake?~
  == BVALYGA
    ~You can free me of this accursed inheritance? Of course I want to!~
  == BNALIA
    ~Crap, why did you leave me with only Edwin to choose?~
  = 
    ~Well, Edwin, if you want sex, it's your time.~
  == BEDWIN
    ~Excellent, I agree! (although I wonder why she asked to Minsc and Haer Dalis before. No matter, pussy is pussy).~
  == IMOEN2J
    ~So, OK, people, I forgot to mention that I actually wanted to be gangbanged from you three. Do you have a problem with that?~
  == BKORGAN
    ~What? Lad, being gangbanged was the worst punishment in dwarven clans for women. So I'll get yer booty no matter what, har!~
  == BANOMEN 
    ~If you promise me to suck my dick as you did two days ago, I can share that with as many men as you want.~
  == BVALYGA
    ~Sigh, if it makes you better, I suppose I'll have to oblige.~
  == IMOEN2J
    ~Uuh...~ [IMOEN19]
  == BANOMEN
    ~Ooh... Continue, continue...~ [ANOMEN14]
  == IMOEN2J
    ~Yes...~ [IMOEN19]
  == BKORGAN
    ~Harrrrr! Swallow this!~ [KORGAN14]
  == IMOEN2J
    ~OOHH...~ [IMOEN19]
  == BVALYGA
    ~Yeah... I suppose it was worth it.~ [VALYGA14]
  == IMOEN2J
    ~YES! YES! YES!~ [IMOEN19]
  == BNALIA
    ~So, you'll all do that together, OK?~
  == BMINSC
    ~Of course, this way we can kick evil outside of you faster!~
  == BHAERDA
    ~We shall share our joys, as we share out toils.~
  == BEDWIN
    ~No! I will not do this!~
  == BNALIA
    ~Well, if you prefer jerking off, do it watching Minsc kicking evil outside of me.~
  =
    ~Oooh...~ [NALIA14]
  == BMINSC
    ~OOH! Justice is done, evil is outside of you.~ [MINSC14]
  == BNALIA
    ~Yeah...~ [NALIA14]
  == BEDWIN
    ~Fine, fine, I'll do it nonetheless.~
  == BNALIA
    ~Yes...~ [NALIA14]
  == BEDWIN
    ~Oof! It was certainly worth it.~ [EDWIN14]
  == BNALIA
    ~AAHH...~ [NALIA14]
  == BHAERDA
    ~"And in a clamor of flutes, we reached Oblivion".~ [HAERDA15]
  == BNALIA 
    ~YES!~ [NALIA14]
  =
    ~Imoen, now that we're done with our Octagon, mind doing our usual two player game?~
  == IMOEN2J
    ~Of course, that was good warming up.~
  =
    ~Wait, you're a bit dirty with milk, I'll lick it off your face...~
  == BNALIA
    ~It isn't milk.~
  =
    ~Hey, you have it too, mind if I clean you?~
  == IMOEN2J
    ~Go for it.~
  =
    ~Ooohhh....~ [IMOEN19]
  == BNALIA
    ~Oooh...~ [NALIA14]
  DO ~SetGlobal("OCTAGONMOD","GLOBAL",4)
  RestParty()~
EXIT
