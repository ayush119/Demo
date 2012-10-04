module(..., package.seeall)

new = function ( params )
--========================================================================================
-- IMPORT DIRECTOR CLASS
--========================================================================================
	
	local director = require("director")
	
--========================================================================================
-- Sounds
--========================================================================================	
    
     local  OneEle = audio.loadStream("OneElephantSpeech.wav")
     local  ElephantSound = audio.loadStream("elephant.mp3")
     local  Tap_on_Elephant = audio.loadStream("Tapon_Elephant.wav")
     local  awesomeSound = audio.loadStream("awesomeSound.wav")
     local  clapplingSound = audio.loadStream("clappling.mp3")
     local  AirSound = audio.loadStream("airplane.mp3")
     
     local  onewav = audio.loadStream("oneSound.wav")
     local  twowav = audio.loadStream("twoSound.wav")
     local  threewav = audio.loadStream("threeSound.wav")
     local  fourwav = audio.loadStream("fourSound.wav")
     local  fivewav = audio.loadStream("fiveSound.wav")
     local  sixwav = audio.loadStream("sixSound.wav")
     local  sevenwav = audio.loadStream("sevenSound.wav")
     local  eightwav = audio.loadStream("eightSound.wav")
     local  ninewav = audio.loadStream("nineSound.wav")
     local  tenwav = audio.loadStream("tenSound.wav")
     
     
     
--========================================================================================
-- Creating display objects and getting handle
--========================================================================================
	local localGroup = display.newGroup()
	local goOutGroup = display.newGroup()
	local TrainGroup = display.newGroup()
	local mainGroup = display.newGroup()
	
	local BG2 = display.newImage("TrainBG.jpg")
	--local Cloud11 = display.newImage("Cloud11.png",1000,150,nil,0.1)
	local Cloud2 = display.newImage("Cloud2.png",10,10,nil,0.1)
	local Cloud3 = display.newImage("Cloud3.png",220,100,nil,0.1)
	local GroundGrass = display.newImage("GroundGrass.png",0,670)
	local OneT = display.newImage("One1.png",1520,480)
	local ThreeT = display.newImage("Three1.png",2450,480)
	
	
	local One = display.newImage("One1.png",520,480)
	One.isVisible = false
	
	
	local Two = display.newImage("Two1.png",520,480)
	Two.isVisible = false
	
	
	local Three = display.newImage("Three1.png",520,480)
	Three.isVisible = false
	
	local Four = display.newImage("Four.png",520,480)
	Four.isVisible = false
	
	local Five = display.newImage("Five.png",520,480)
	Five.isVisible = false
		  	  	  
	local Six = display.newImage("Six.png",520,480)
	Six.isVisible = false
	
	local Seven = display.newImage("Seven.png",520,480)
	Seven.isVisible = false	  
	
	local Eight = display.newImage("Eight.png",520,480)
	Eight.isVisible = false	 
	
	local Nine= display.newImage("Nine.png",520,480)
	Nine.isVisible = false
	
	local Ten= display.newImage("Ten.png",520,480)
	Ten.isVisible = false
	
	
	local TrainRail = display.newImage("TrainBodi_1.png",800,310)
	local TrainBodi_2 = display.newImage("TrainBodi_2.png",1820,480)
	local TrainBodi_3 = display.newImage("TrainBodi_3.png",2311,478)
	local TrainBodi_4 = display.newImage("TrainBodi_2.png",2825,480)
	local TrainBodi_5 = display.newImage("TrainBodi_3.png",3315,478)
	local TrainBodi_6 = display.newImage("TrainBodi_2.png",3829,478)
	local TrainBodi_7 = display.newImage("TrainBodi_3.png",4320,478)
	local TrainBodi_8 = display.newImage("TrainBodi_2.png",4834,478)
	local TrainBodi_9 = display.newImage("TrainBodi_3.png",5324,478)
	local TrainBodi_10 = display.newImage("TrainBodi_2.png",5824,478)
	
	
	local Train_Sun = display.newImage("Train_Sun.png",900,-30)
	
	local Airplane = display.newImage("Airplane.png",600,50,nil,0.1)
	
	local elephant = display.newImage("Elephant1.png",1450,200,nil,0.1)
	local Zebra1 = display.newImage("Zebra1.png",1800,320,nil,0.1)
	local Zebra2 = display.newImage("Zebra1.png",1950,320,nil,0.1)
	
    local ziraf1 = graphics.newImageSheet( "ziraf.png", {  width=248, height=456, numFrames=4 } )
    local ziraf1 = display.newSprite( ziraf1, {  start=1, count=4, time = 1700} )
        ziraf1.x=2450
        ziraf1.y= 400
        ziraf1:play()
       
    local ziraf2 = graphics.newImageSheet( "ziraf.png", {  width=248, height=456, numFrames=4 } )
    local ziraf2 = display.newSprite( ziraf2, {  start=1, count=4, time = 1700} )
          ziraf2.x=2550
          ziraf2.y= 400
     	  ziraf2:play()
     	 
	      
   local ziraf3 = graphics.newImageSheet( "ziraf.png", {  width=248, height=456, numFrames=4 } )
   local ziraf3 = display.newSprite( ziraf3, {  start=1, count=4, time = 1700} )
          ziraf3.x=2650
          ziraf3.y= 400
     	  ziraf3:play()
     	
   local Cow1 = display.newImage("Cow.png",2780,320)
  
   local Cow2 = display.newImage("Cow.png",2850,320)
   
   local Cow3 = display.newImage("Cow.png",2900,340)
  
   local Cow4 = display.newImage("Cow.png",3000,360)
   Cow4.xScale= .8
   Cow4.yScale= 1
   
------  
  local Lion1 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion1 = display.newSprite( Lion1, { name="Lion1", start=1, count=4, time = 1000} )
  Lion1.x = 3530
  Lion1.y = 450
  
  Lion1:play()
   
  local Lion2 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion2 = display.newSprite( Lion2, { name="Lion1", start=1, count=4, time = 1000} )
  Lion2.x = 3730
  Lion2.y = 450
  Lion2.xScale = .7
  
  Lion2:play()
  
  local Lion3 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion3 = display.newSprite( Lion3, { name="Lion1", start=1, count=4, time = 1000} )
  Lion3.x = 3430
  Lion3.y = 450
 
  Lion3:play()
  
  local Lion4 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion4 = display.newSprite( Lion4, { name="Lion1", start=1, count=4, time = 1000} )
  Lion4.x = 3530
  Lion4.y = 450
 
  Lion4:play()
  
  local Lion5 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion5 = display.newSprite( Lion5, { name="Lion1", start=1, count=4, time = 1000} )
  Lion5.x = 3630
  Lion5.y = 450
  
  Lion5:play()
  
 ---- 
  
  local monkey1 = display.newImage("monkey1.png",3860,340)
  local monkey2 = display.newImage("monkey1.png",3910,350)
  local monkey3 = display.newImage("monkey1.png",4020,360)
  local monkey4 = display.newImage("monkey1.png",4100,370)
  local monkey5 = display.newImage("monkey1.png",4150,340)
  local monkey6 = display.newImage("monkey1.png",4190,340)
  
  
  
------  
  local cat1 = graphics.newImageSheet( "catp.png", {  width=129, height=232, numFrames=8 } )
  local cat1 = display.newSprite( cat1, { name="cat", start=1, count=8, time = 1000} )
  cat1:play()
  
  cat1.x = 4750
  cat1.y = 450
  
  
  local cat2 = graphics.newImageSheet( "catp.png", {  width=129, height=232, numFrames=8 } )
  local cat2 = display.newSprite(cat2, { name="cat", start=1, count=8, time = 1000} )
  cat2:play()
  
  cat2.x = 4450
  cat2.y = 460
   
  local cat3 = graphics.newImageSheet( "catp.png", {  width=129, height=232, numFrames=8 } )
  local cat3 = display.newSprite( cat3, { name="cat", start=1, count=8, time = 1000} )
  cat3:play()
  
  cat3.x = 4500
  cat3.y = 470
   
  local cat4 = graphics.newImageSheet( "catp.png", {  width=129, height=232, numFrames=8 } )
  local cat4 = display.newSprite( cat4, { name="cat", start=1, count=8, time = 1000} )
  cat4:play()
  
  cat4.x = 4550
  cat4.y = 480
   
  local cat5 = graphics.newImageSheet( "catp.png", {  width=129, height=232, numFrames=8 } )
  local cat5 = display.newSprite( cat5, { name="cat", start=1, count=8, time = 1000} )
  cat5:play()
  
  cat5.x =4600
  cat5.y = 450
   
  local cat6 = graphics.newImageSheet( "catp.png", {  width=129, height=232, numFrames=8 } )
  local cat6 = display.newSprite( cat6, { name="cat", start=1, count=8, time = 1000} )
  cat6:play()
  
  cat6.x =4650
  cat6.y = 460
  
  local cat7 = graphics.newImageSheet( "catp.png", {  width=129, height=232, numFrames=8 } )
  local cat7 = display.newSprite( cat7, { name="cat", start=1, count=8, time = 1000} )
  cat6:play()
  
  cat7.x = 4700
  cat7.y = 470
  
----

  local dog1 = display.newImage("dog.png",4850,330)
  
  
  local dog2 = display.newImage("dog.png",4900,340)
  
  
  local dog3 = display.newImage("dog.png",5000,350)
  
  
  local dog4 = display.newImage("dog.png",5150,330)
  
  
  local dog5 = display.newImage("dog.png",5100,330)
 
  
  local dog6 = display.newImage("dog.png",5100,330)
 
  
  local dog7 = display.newImage("dog.png",5150,330)
  
  
  local dog8 = display.newImage("dog.png",5150,370)
  
--

  local bird1 = display.newImage("bird.png",5350,400)
  bird1.xScale = 1.3
  bird1.yScale = 1.3
  
  local bird2 = display.newImage("bird.png",5350,400)
  bird2.xScale = 1.3
  bird2.yScale = 1.3
  
  local bird3 = display.newImage("bird.png",5350,400)
  bird3.xScale = 1.3
  bird3.yScale = 1.3
  
  local bird4 = display.newImage("bird.png",5450,400)
  bird4.xScale = 1.3
  bird4.yScale = 1.3
  
  local bird5 = display.newImage("bird.png",5550,400)
  bird5.xScale = 1.3
  bird5.yScale = 1.3
  
  local bird6 = display.newImage("bird.png",5650,400)
  bird6.xScale = 1.3
  bird6.yScale = 1.3
  
  local bird7 = display.newImage("bird.png",5700,400)
  bird7.xScale = 1.3
  bird7.yScale = 1.3
  
  local bird8 = display.newImage("bird.png",5350,400)
  bird8.xScale = 1.3
  bird8.yScale = 1.3
  
  local bird9 = display.newImage("bird.png",5550,400)
  bird9.xScale = 1.3
  bird9.yScale = 1.3
  
  
  
	
--========================================================================================
-- Adding all object with the Group.
--========================================================================================	
	localGroup:insert(BG2)
	localGroup:insert(Train_Sun)
	localGroup:insert(Airplane)
	localGroup:insert(Cloud2)
	localGroup:insert(Cloud3)
	
	
	
	TrainGroup:insert(elephant)
	
	TrainGroup:insert(Zebra1)
	TrainGroup:insert(Zebra2)
	
	TrainGroup:insert(ziraf1)
	TrainGroup:insert(ziraf2)
	TrainGroup:insert(ziraf3)
	
	TrainGroup:insert(Cow1)	
	TrainGroup:insert(Cow2)
	TrainGroup:insert(Cow3)
	TrainGroup:insert(Cow4)	
	
	TrainGroup:insert(Lion1)
	TrainGroup:insert(Lion2)
	TrainGroup:insert(Lion3)
	TrainGroup:insert(Lion4)
	TrainGroup:insert(Lion5)
	
	TrainGroup:insert(monkey1)
	TrainGroup:insert(monkey2)
	TrainGroup:insert(monkey3)
	TrainGroup:insert(monkey4)
	TrainGroup:insert(monkey5)
	TrainGroup:insert(monkey6)
	
	TrainGroup:insert(cat1)
	TrainGroup:insert(cat2)
	TrainGroup:insert(cat3)
	TrainGroup:insert(cat4)
	TrainGroup:insert(cat5)
	TrainGroup:insert(cat6)
	TrainGroup:insert(cat7)
	
	TrainGroup:insert(dog1)
	TrainGroup:insert(dog2)
	TrainGroup:insert(dog3)
	TrainGroup:insert(dog4)
	TrainGroup:insert(dog5)
	TrainGroup:insert(dog6)
	TrainGroup:insert(dog7)
	TrainGroup:insert(dog8)
	
	TrainGroup:insert(bird1)
	TrainGroup:insert(bird2)
	TrainGroup:insert(bird3)
	TrainGroup:insert(bird4)
	TrainGroup:insert(bird5)
	TrainGroup:insert(bird6)
	TrainGroup:insert(bird7)
	TrainGroup:insert(bird8)
	TrainGroup:insert(bird9)
	
	TrainGroup:insert(TrainRail)
	TrainGroup:insert(TrainBodi_2)
	TrainGroup:insert(TrainBodi_3)
	TrainGroup:insert(TrainBodi_4)
	TrainGroup:insert(TrainBodi_5)
	TrainGroup:insert(TrainBodi_6)
	TrainGroup:insert(TrainBodi_7)
	TrainGroup:insert(TrainBodi_8)
	TrainGroup:insert(TrainBodi_9)
	TrainGroup:insert(TrainBodi_10)
	
	TrainGroup:insert(OneT)
	TrainGroup:insert(ThreeT)
	
	
	
	mainGroup:insert(localGroup)
	
    mainGroup:insert(TrainGroup)
    mainGroup:insert(One)
    mainGroup:insert(Two)
	mainGroup:insert(Three)
	mainGroup:insert(Four)
	mainGroup:insert(Five)
    mainGroup:insert(GroundGrass)	
	
	
	
	
	
--========================================================================================
--Memory clinup 
--========================================================================================		
	local function cleanup()
		BG2:removeSelf()
		Cloud11:removeSelf()
		Cloud2:removeSelf()
		Train_Sun:removeSelf()
		Cloud3:removeSelf()
		Cloud3:removeSelf()
		GroundGrass:removeSelf()
		Elephant1:removeSelf()
		Airplane:removeSelf()
		Bull:removeSelf()
		Two1:removeSelf()
		
		
		One:removeSelf()
		Two:removeSelf()
		Three:removeSelf()
		Four:removeSelf()
		Five:removeSelf()
		
		TrainRail:removeSelf()
		TrainBodi_2:removeSelf()
		TrainBodi_3:removeSelf()
		TrainBodi_4:removeSelf()
		TrainBodi_5:removeSelf()
		TrainBodi_6:removeSelf()
		TrainBodi_7:removeSelf()
		
		Zebra1:removeSelf()
		Zebra2:removeSelf()
		localGroup:removeSelf()
		
		bird1:removeSelf()
		bird2:removeSelf()
		bird3:removeSelf()
		bird4:removeSelf()
		bird5:removeSelf()
		bird6:removeSelf()
		bird7:removeSelf()
		bird8:removeSelf()
		bird9:removeSelf()
		
	end
	
--========================================================================================
	-- Airplane  Animation
--========================================================================================
	
	
	local function goStart(event)
	     audio.play(AirSound)
	     transition.to(Airplane, { time=5000, x = -170, onComplite = nil})
	end	
	
    Airplane:addEventListener("touch", goStart)	
--====================================================================
--Train  movement
--====================================================================	
      
    local function Speech(event)
       audio.play(Tap_on_Elephant)
       
    end
     
     transition.to( TrainGroup, { time=4000, x=-5500, onComplete=timer.performWithDelay( 2500,Speech, 1 )})
   

--====================================================================
--Train go out movement
--====================================================================	
  
  
  local function goNext(event)
	
	   
	   -- cleanup()
	   if(counter == 9) then
	   	  director:changeScene("Train_Ten", "crossfade")
	   	end
	end
  
  
  
   local function out(event)
   		  goOutGroup:insert(bird1)
   		  goOutGroup:insert(bird2)
   		  goOutGroup:insert(bird3)
   		  goOutGroup:insert(bird4)
   		  goOutGroup:insert(bird5)
   		  goOutGroup:insert(bird6)
   		  goOutGroup:insert(bird7)
   		  goOutGroup:insert(bird8)
   		  goOutGroup:insert(bird9)
   		  
   		  
   		  goOutGroup:insert(TrainGroup)
   		  
   		
   		 if(counter == 9) then
	        transition.to(goOutGroup, { time=4700, x = -4000, onComplete=timer.performWithDelay( 5000,goNext, 1 )})
	     end
	end	
	
--========================================================================================
--Zebra  movement
--========================================================================================	
    local function Sound(event)
        if(counter == 9)then
          audio.play(awesomeSound)
          audio.play(clapplingSound)
        end
    end
    
--------**
counter = 0
	
	local function showimage()
	  if(counter == 1) then
	    One.isVisible = true
	    audio.play(onewav)
	    Two.isVisible = false
	    Three.isVisible = false
	    Four.sVisible = false
	    Five.sVisible = false
	    
	  end
	  if(counter == 2) then
	    One.isVisible = false
	    Two.isVisible = true
	    audio.play(twowav)
	    Three.isVisible = false
	    Four.sVisible = false
	    Five.sVisible = false
	    
	   
	  end
	  if(counter == 3) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible = true
	    audio.play(threewav)
	    Four.sVisible = false
	    Five.sVisible = false
	    
	    
	   
	  end
	  if(counter == 4) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible = false
	    Four.sVisible = true
	    audio.play(fourwav)
	    Five.sVisible = false
	end
	   
	  if(counter == 5) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible =false
	    Four.sVisible = false
	    Five.sVisible = true
	    audio.play(fivewav)
	    
	   
	  end
	  
	  if(counter == 6) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible =false
	    Four.sVisible = false
	    Five.sVisible = true
	    audio.play(sixwav)
	    
	   
	  end
	  
	  if(counter == 7) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible =false
	    Four.sVisible = false
	    Five.sVisible = true
	    audio.play(sevenwav)
	   
	   
	  end
	  
	if(counter == 8) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible =false
	    Four.sVisible = false
	    Five.sVisible = true
	    audio.play(eightwav)
	    Sound()
	   
	  end
	  
	  if(counter == 9) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible =false
	    Four.sVisible = false
	    Five.sVisible = true
	    audio.play(eightwav)
	    Sound()
	   
	  end
	  
	  
	end
	
	
	
	local function dmove1(event)
	  if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird1:removeEventListener("touch", dmove1)
         transition.to(bird1, { time=400, x = 400, y=450,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
      end
	end
	bird1:addEventListener("touch", dmove1)


	local function dmove2(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird2:removeEventListener("touch", dmove2)
        transition.to(bird2, { time=400, x = 450, y=470,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	bird2:addEventListener("touch", dmove2)


	local function dmove3(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird3:removeEventListener("touch", dmove3)
        transition.to(bird3, { time=400,  x = 480, y=460,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	bird3:addEventListener("touch", dmove3)
   
   local function dmove4(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird4:removeEventListener("touch", dmove4)
       transition.to(bird4, { time=400,x = 500, y=470,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	bird4:addEventListener("touch", dmove4)

	local function dmove5(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird5:removeEventListener("touch", dmove5)
       transition.to(bird5, { time=400, x = 550, y=460,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	bird5:addEventListener("touch", dmove5)

local function dmove6(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird6:removeEventListener("touch", dmove6)
       transition.to(bird6, { time=400, x = 600, y=460,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	bird6:addEventListener("touch", dmove6)


local function dmove7(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird7:removeEventListener("touch", dmove7)
       transition.to(bird7, { time=400, x = 640, y=460,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	bird7:addEventListener("touch", dmove7)

local function dmove8(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird8:removeEventListener("touch", dmove8)
       transition.to(bird8, { time=400, x = 705, y=460,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	bird8:addEventListener("touch", dmove8)

local function dmove9(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    bird9:removeEventListener("touch", dmove9)
       transition.to(bird9, { time=400, x = 735, y=460,xScale = 1.3,yScale = 1.3,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	bird9:addEventListener("touch", dmove9)



--========================================================================================
	-- Clouds  Animation
--========================================================================================
	
--1st--
	
		local function cloud1Animation()
			local animUp = function()
				anim = transition.to( Cloud11, { time=90000, x=1093, onComplete=cloud1Animation })
			end
			
			   anim = transition.to( Cloud11, { time=90000, x=-20, onComplete=animUp })
		end
		
	cloud1Animation()

--2nd--		
	local function cloud1Animation()
			local animUp = function()
				anim = transition.to( Cloud2, { time=90000, x=-20, onComplete=cloud1Animation })
			end
			
			   anim = transition.to( Cloud2, { time=90000, x=1093, onComplete=animUp })
		end
		
	cloud1Animation()
--3rd--		
		
   local function cloud1Animation()
			local animUp = function()
				anim = transition.to( Cloud3, { time=90000, x=1093, onComplete=cloud1Animation })
			end
			
			   anim = transition.to( Cloud3, { time=90000, x=-20, onComplete=animUp })
		end
		
	cloud1Animation()
		
--========================================================================================
	-- One Speek
--========================================================================================
		
--========================================================================================
	-- Goto Next Screen
--========================================================================================
	

	--nextB:addEventListener("touch", goNext)
	   	
		


--========================================================================================
	-- INITIALIZE
--========================================================================================
	
	local initVars = function ()
		
	end
	
  --------------------------
	-- Initiate variables
  --------------------------
	
	initVars()
	return localGroup
	
end