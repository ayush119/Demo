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
--========================================================================================
-- Creating display objects and getting handle
--========================================================================================
	local localGroup = display.newGroup()
	local TrainGroup = display.newGroup()
	local mainGroup = display.newGroup()
	local GooutGroup = display.newGroup()
	
	
	
	local BG2 = display.newImage("TrainBG.jpg")
	--local Cloud11 = display.newImage("Cloud11.png",1000,150,nil,0.1)
	local Cloud2 = display.newImage("Cloud2.png",10,10,nil,0.1)
	local Cloud3 = display.newImage("Cloud3.png",220,100,nil,0.1)
	local GroundGrass = display.newImage("GroundGrass.png",0,670)
	local OneT = display.newImage("One1.png",1520,480)
	
	local One = display.newImage("One1.png",520,480)
	        One.isVisible = false
	local  onewav = audio.loadStream("oneSound.wav")
	
	local Two = display.newImage("Two1.png",520,480)
	      Two.isVisible = false
	local  twowav = audio.loadStream("twoSound.wav")
	
	local Three = display.newImage("Three1.png",520,480)
		  Three.isVisible = false
	local  threewav = audio.loadStream("threeSound.wav")
	
	
	local TrainRail = display.newImage("TrainBodi_1.png",800,310)
	local TrainBodi_2 = display.newImage("TrainBodi_2.png",1820,480)
	local TrainBodi_3 = display.newImage("TrainBodi_3.png",2311,478)
	
	local Train_Sun = display.newImage("Train_Sun.png",900,-30)
	
	local Airplane = display.newImage("Airplane.png",600,50,nil,0.1)
	
	local elephant = display.newImage("Elephant1.png",1450,200,nil,0.1)
	local Zebra1 = display.newImage("Zebra1.png",1800,320,nil,0.1)
	local Zebra2 = display.newImage("Zebra1.png",1950,320,nil,0.1)
	
    local ziraf1 = graphics.newImageSheet( "ziraf.png", {  width=248, height=456, numFrames=4 } )
    local ziraf1 = display.newSprite( ziraf1, {  start=1, count=4, time = 1700} )
          ziraf1.x=420
          ziraf1.y= 120
     	  ziraf1:play()
     	  ziraf1.yScale =.5
	      ziraf1.xScale =.5
        
    local ziraf2 = graphics.newImageSheet( "ziraf.png", {  width=248, height=456, numFrames=4 } )
    local ziraf2 = display.newSprite( ziraf2, {  start=1, count=4, time = 1700} )
          ziraf2.x=620
          ziraf2.y= 120
     	  ziraf2:play()
     	  ziraf2.yScale =.5
	      ziraf2.xScale =.5
	      
   local ziraf3 = graphics.newImageSheet( "ziraf.png", {  width=248, height=456, numFrames=4 } )
   local ziraf3 = display.newSprite( ziraf3, {  start=1, count=4, time = 1700} )
          ziraf3.x=820
          ziraf3.y= 120
     	  ziraf3:play()
     	  ziraf3.yScale =.5
	      ziraf3.xScale =.5  

	
	local nextB = display.newImage("next.png",830,650)
	
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
	
	TrainGroup:insert(TrainRail)
	TrainGroup:insert(TrainBodi_2)
	TrainGroup:insert(TrainBodi_3)
	TrainGroup:insert(OneT)
	
	
	
	
	mainGroup:insert(localGroup)	
    mainGroup:insert(TrainGroup)	
	
	mainGroup:insert(GroundGrass)
	mainGroup:insert(nextB)	
	mainGroup:insert(One)
	mainGroup:insert(Two)
	mainGroup:insert(Three)
	
	
--========================================================================================
--Memory clinup 
--========================================================================================		
	local function cleanup()
		
		BG2:removeSelf()
		Cloud2:removeSelf()
		Train_Sun:removeSelf()
		Cloud3:removeSelf()
		
		GroundGrass:removeSelf()
		elephant:removeSelf()
		Airplane:removeSelf()
		
		Two:removeSelf()
		nextB:removeSelf()
		
		One:removeSelf()
		TrainRail:removeSelf()
		TrainBodi_2:removeSelf()
		Zebra1:removeSelf()
		Zebra2:removeSelf()
		localGroup:removeSelf()
		
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
     
     transition.to( TrainGroup, { time=3000, x=-2000, onComplete=timer.performWithDelay( 2500,Speech, 1 )})


--====================================================================
--Train go out movement
--====================================================================	
  
  
  local function goNext(event)
       -- cleanup()
	   	director:changeScene("Train_Four", "crossfade")
	end
  



   local function out(event)
        
         GooutGroup:insert(ziraf3)
         GooutGroup:insert(ziraf2)
         GooutGroup:insert(ziraf1)
         GooutGroup:insert(TrainGroup)
         GooutGroup:insert(Three)
         
	     transition.to(GooutGroup, { time=4000, x = -3500, delay=2500, onComplete = goNext})
	end	
	
--========================================================================================
--Zebra  movement
--========================================================================================	
    local function abc(event)
        audio.play(awesomeSound)
        audio.play(clapplingSound)
    end
    

counter = 0
	
	local function showimage()
	  if(counter == 1) then
	    One.isVisible = true
	    audio.play(onewav)
	    Two.isVisible = false
	    Three.isVisible = false
	   
	  end
	  if(counter == 2) then
	    One.isVisible = false
	    Two.isVisible = true
	    audio.play(twowav)
	    Three.isVisible = false
	   
	  end
	  if(counter == 3) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible = true
	    audio.play(threewav)
	    abc()
	   
	  end
	
	end
	
	
	
	local function dmove1(event)
	  if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    ziraf1:removeEventListener("touch", dmove1)
         transition.to(ziraf1, { time=400, xScale= 1, yScale =1, x = 420, y=400,onComplete = {delay = 5000, out()}})
      end
	end
	ziraf1:addEventListener("touch", dmove1)


	local function dmove2(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	   ziraf2:removeEventListener("touch", dmove2)
        transition.to(ziraf2, { time=400, xScale= 1, yScale =1, x = 520, y=400,onComplete = {delay = 5000, out()}})
     end
	end
	ziraf2:addEventListener("touch", dmove2)


	local function dmove3(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    ziraf3:removeEventListener("touch", dmove3)
        transition.to(ziraf3, { time=400, xScale= 1, yScale =1, x =620, y=400,onComplete = {delay = 5000, out()}})
     end
	end
	ziraf3:addEventListener("touch", dmove3)


	


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