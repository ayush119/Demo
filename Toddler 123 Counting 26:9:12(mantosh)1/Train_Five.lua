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
		  	  	  
		  
	
	
	
	local TrainRail = display.newImage("TrainBodi_1.png",800,310)
	local TrainBodi_2 = display.newImage("TrainBodi_2.png",1820,480)
	local TrainBodi_3 = display.newImage("TrainBodi_3.png",2311,478)
	local TrainBodi_4 = display.newImage("TrainBodi_2.png",2825,480)
	local TrainBodi_5 = display.newImage("TrainBodi_3.png",3315,478)
	
	
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
   
   
  local Lion1 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion1 = display.newSprite( Lion1, { name="Lion1", start=1, count=4, time = 1000} )
  Lion1.x = 430
  Lion1.y = 100
  Lion1.xScale = .6
  Lion1.yScale = .6
  Lion1:play()
   
  local Lion2 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion2 = display.newSprite( Lion2, { name="Lion1", start=1, count=4, time = 1000} )
  Lion2.x = 330
  Lion2.y = 100
  Lion2.xScale = .6
  Lion2.yScale = .6
  Lion2:play()
  
  local Lion3 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion3 = display.newSprite( Lion3, { name="Lion1", start=1, count=4, time = 1000} )
  Lion3.x = 530
  Lion3.y = 100
  Lion3.xScale = .6
  Lion3.yScale = .6
  Lion3:play()
  
  local Lion4 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion4 = display.newSprite( Lion4, { name="Lion1", start=1, count=4, time = 1000} )
  Lion4.x = 630
  Lion4.y = 100
  Lion4.xScale = .6
  Lion4.yScale = .6
  Lion4:play()
  
  local Lion5 = graphics.newImageSheet( "lion.png", {  width=318, height=316, numFrames=4 } )
  local Lion5 = display.newSprite( Lion5, { name="Lion1", start=1, count=4, time = 1000} )
  Lion5.x = 730
  Lion5.y = 100
  Lion5.xScale = .6
  Lion5.yScale = .6
  Lion5:play()
  
   
	
	
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
	
	localGroup:insert(Lion1)
	localGroup:insert(Lion2)
	localGroup:insert(Lion3)
	localGroup:insert(Lion4)
	localGroup:insert(Lion5)
	
	
	TrainGroup:insert(Cow1)	
	TrainGroup:insert(Cow2)
	TrainGroup:insert(Cow3)
	TrainGroup:insert(Cow4)	
	
	TrainGroup:insert(TrainRail)
	TrainGroup:insert(TrainBodi_2)
	TrainGroup:insert(TrainBodi_3)
	TrainGroup:insert(TrainBodi_4)
	TrainGroup:insert(TrainBodi_5)

	
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
     
     transition.to( TrainGroup, { time=3000, x=-3000, onComplete=timer.performWithDelay( 2500,Speech, 1 )})
   

--====================================================================
--Train go out movement
--====================================================================	
  
  
  local function goNext(event)
	
	   
	   -- cleanup()
	   if(counter == 5) then
	   	  director:changeScene("Train_Six", "crossfade")
	   	end
	end
  
  
  
   local function OneAnim(event)
        
        local function goNext1()
          
            One.alpha =1
            transition.to(One,{time=100, alpha=1, yScale=.6, xScale=.6, onComplete=nil})
        end
        
        transition.to(One,{time=100, alpha=1, yScale=1, xScale=1, onComplete=goNext1})
  
    end
   

   local function out(event)
   		  goOutGroup:insert(Lion5)
   		  goOutGroup:insert(Lion4)
   		  goOutGroup:insert(Lion3)
   		  goOutGroup:insert(Lion2)
   		  goOutGroup:insert(Lion1)
   		  goOutGroup:insert(TrainGroup)
   		  
   		
   		 if(counter == 5) then
	        transition.to(goOutGroup, { time=4700, x = -4000, onComplete=timer.performWithDelay( 5000,goNext, 1 )})
	     end
	end	
	
--========================================================================================
--Zebra  movement
--========================================================================================	
    local function Sound(event)
        if(counter == 5)then
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
	    
	    Sound()
	   end
	   
	  if(counter == 5) then
	    One.isVisible = false
	    Two.isVisible = false
	    Three.isVisible =false
	    Four.sVisible = false
	    Five.sVisible = true
	    audio.play(fivewav)
	    Sound()
	   
	  end
	
	end
	
	
	
	local function dmove1(event)
	  if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    Lion1:removeEventListener("touch", dmove1)
         transition.to(Lion1, { time=400, xScale= .9, yScale =.9, x = 420, y=420,onComplete=timer.performWithDelay( 5000,out, 1 )})
      end
	end
	Lion1:addEventListener("touch", dmove1)


	local function dmove2(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    Lion2:removeEventListener("touch", dmove2)
        transition.to(Lion2, { time=400, xScale= .9, yScale =.9, x = 520, y=480,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	Lion2:addEventListener("touch", dmove2)


	local function dmove3(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    Lion3:removeEventListener("touch", dmove3)
        transition.to(Lion3, { time=400, xScale= .9, yScale =.9, x = 620, y=460,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	Lion3:addEventListener("touch", dmove3)
   
   local function dmove4(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    Lion4:removeEventListener("touch", dmove4)
       transition.to(Lion4, { time=400, xScale= .7, yScale =.9, x = 720, y=480,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	Lion4:addEventListener("touch", dmove4)

	local function dmove5(event)
	 if( event.phase == "began") then
	    counter = counter + 1
	    showimage()
	    Lion5:removeEventListener("touch", dmove5)
       transition.to(Lion5, { time=400, xScale= .7, yScale =.9, x = 700, y=460,onComplete=timer.performWithDelay( 5000,out, 1 )})
     end
	end
	Lion5:addEventListener("touch", dmove5)



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