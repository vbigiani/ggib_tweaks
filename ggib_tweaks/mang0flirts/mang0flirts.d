CHAIN IF WEIGHT #-1 ~Global("ggib02","GLOBAL",0) IsValidForPartyDialog("Aerie")~ THEN BHAERDA mang0flirt02
~Aerie, I think you are really fit.~ = ~You're fit but don't you know it.~
DO ~SetGlobal("ggib02","GLOBAL",71)~
== BAERIE ~(Administers oral sex.)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ggib03","GLOBAL",0) IsValidForPartyDialog("Keldorn")~ THEN BYOSHIM mang0flirt3
~Keldorn, you have been with the order for many years now.  I'm curious.  When the order's mission takes you away from family for months on end what do you do to quell those manly urges?~
DO ~SetGlobal("ggib03","GLOBAL",71)~
== BKELDOR ~Let me show you. (Keldorn administers oral sex)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ggib04","GLOBAL",0) IsValidForPartyDialog("ANomen")~ THEN BKELDOR mang0flirt4
~Really, Charname, you should have let me stay with Maria a little longer or not at all!  My nuts feel as if they're going to explode.  You should be ashamed of yourself.~
DO ~SetGlobal("ggib04","GLOBAL",71)~
== BANOMEN ~Let me take care of that for you. (Anomen administers oral sex)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ggib05","GLOBAL",0) IsValidForPartyDialog("Keldorn")~ THEN BMAZZY mang0flirt5
~I have a headache.~
DO ~SetGlobal("ggib03","GLOBAL",71)~
== BKELDOR ~I'll take care of that for you.  (Keldorn administers oral sex)~
== BMAZZY ~Thank you, Keldorn, but what will your wife think?~
== BKELDOR ~Eating isn't cheating.~
EXIT
