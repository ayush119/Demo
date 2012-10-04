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
	local  onewav = audio.loadStream("oneSound.wav")
	
	local Two = display.newImage("Two1.png",520,480)
	      Two.isVisible = false
	local  twowav = audio.loadStream("twoSound.wav")
	
	local Three = display.newImage("Three1.png",520,480)
		  Three.isVisible = false
	
	local Four = display.newImage("Four.png",520,480)
		  Four.isVisible = false
		  	  
		  
	local  threewav = audio.loadStream("threeSound.wav")
	
	
	local TrainRail = display.newImage("TrainBodi_1.png",800,310)
	local TrainBodi_2 = display.newImage("TrainBodi_2.png",1820,480)
	local TrainBodi_3 = display.newImage("TrainBodi_3.png",2311,478)
	local TrainBodi_4 = display.newImage("TrainBodi_2.png",2825,480)
	
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
     	
   local Cow1 = display.newImage("Cow.png",400,010)
   Cow1.xScale = .6
   Cow1.yScale = .6
   local Cow2 = display.newImage("Cow.png",500,010)
   Cow2.xScale = .6
   Cow2.yScale = .6
   
   local Cow3 = display.newImage("Cow.png",600,010)
   Cow3.xScale = .6
   Cow3.yScale = .6
   
   local Cow4 = display.newImage("Cow.png",700,010)
   Cow4.xScale = .6
   Cow4.yScale = .6
   
   
	
	
--========================================================================================
-- Adding all object with the Group.
--========================================================================================	
	localGroup:insert(BG2)
	localGroup:insert(Train_Sun)
	localGroup:insert(Airplane)
	localGroup:insert(Cloud2)
	localGroup:insert(Cloud3)
	
	localGroup:insert(One)
	localGroup:insert(Two)
	localGroup:insert(Three)
	localGroup:insert(Four)
	
	
	TrainGroup:insert(elephant)
	TrainGroup:insert(Zebra1)
	TrainGroup:insert(Zebra2)
	TrainGroup:insert(ziraf1)
	TrainGroup:insert(ziraf2)
	TrainGroup:insert(ziraf3)
	
	TrainGroup:insert(TrainRail)
	TrainGroup:insert(TrainBodi_2)
	TrainGroup:insert(TrainBodi_3)
	TrainGroup:insert(TrainBodi_4)
	TrainGroup:insert(OneT)
	TrainGroup:insert(ThreeT)
	
	
	
	mainGroup:insert(localGroup)
	mainGroup:insert(Cow1)	
	mainGroup:insert(Cow2)
	mainGroup:insert(Cow3)
	mainGroup:insert(Cow4)	
    mainGroup:insert(TrainGroup)
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
     
     transition.to( TrainGroup, { time=3000, x=-2500, onComplete=timer.performWithDelay( 2500,Speech, 1 )})
   

--====================================================================
--Train go out movement
--====================================================================	
  
  
  local function goNext(event)
	
	   
	   -- cleanup()
	    if(counter == 4) then
	   	  director:changeScene("Train_Five", "crossfade")
	   	end
	end
  
  
  
   local function OneAnim(event)
        
        local function goNext1()
            --audio.play(avc2)
            One.alpha =1
            transition.to(One,{time=100, alpha=1, yScale=.6, xScale=.6, onComplete=nil})
        end
        
        transition.to(One,{time=100, alpha=1, yScale=1, xScale=1, onComplete=goNext1})
  
    end
   

   local function out(event)
   		  goOutGroup:insert(Cow1)
   		  goOutGroup:insert(Cow2)
   		  goOutGroup:insert(Cow3)
   		  goOutGroup:insert(Cow4)
   		  goOutGroup:insert(TrainGroup)
   		  
   		
   		 if(counter == 4) then
	        transition.to(goOutGroup, { time=4000, x = -4000, onComplete=timer.performWithDelay( 5000,goNext, 1 )})
	     end
	end	
	
--========================================================================================
--Zebra  movement
--========================================================================================	
    local function Sound(event)
        if(counter == 4)then
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
	  end
	  if(counter == 2) then
	    One.isVisible = false
	    Two.isVisible = true
	    audio.play(twowav)
	    Three.isVisible = false
	    Four.sVisible = false
	   
	  end
	  if(counter == 3) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible = true
	    Four.sVisible = false
	    audio.play(threewav)
	    
	   
	  end
	  if(counter == 4) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible = false
	    Four.sVisible = true
	    audio.play(threewav)
	    Sound()
	   
	  end
	
	end
	
	
	
	local function dmove1(event)
	  if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    Cow1:removeEventListener("touch", dmove1)
         transition.to(Cow1, { time=400, xScale= 1, yScale =1, x = 420, y=480,onComplete=timer.performWithDelay( 5000,out, 1 )})
      end
	end
	Cow1:addEventListener("touch", dmove1)


	local function dmove2(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	   Cow1:removeEventListener("touch", dmove2)
        transition.to(Cow2, { time=400, xScale= 1, yScale =1, x = 520, y=480,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	Cow2:addEventListener("touch", dmove2)


	local function dmove3(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    Cow3:removeEventListener("touch", dmove3)
        transition.to(Cow3, { time=400, xScale= 1, yScale =1, x = 620, y=480,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	Cow3:addEventListener("touch", dmove3)
   
   local function dmove4(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    Cow4:removeEventListener("touch", dmove4)
       transition.to(Cow4, { time=400, xScale= .7, yScale =1, x = 720, y=480,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	Cow4:addEventListener("touch", dmove4)

	


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