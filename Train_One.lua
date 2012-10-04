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
	
	local BG2 = display.newImage("TrainBG.jpg")
	--local Cloud11 = display.newImage("Cloud11.png",1000,150,nil,0.1)
	local Cloud2 = display.newImage("Cloud2.png",10,10,nil,0.1)
	local Cloud3 = display.newImage("Cloud3.png",220,100,nil,0.1)
	local GroundGrass = display.newImage("GroundGrass.png",0,670)
	
	
	One = display.newImage("One1.png",520,480)
	One.alpha =0
	One.yScale =.7
	One.xScale =.7
	
	local TrainRail = display.newImage("TrainBodi_1.png",800,310)
	local Train_Sun = display.newImage("Train_Sun.png",900,-30)
	
	local Airplane = display.newImage("Airplane.png",600,50,nil,0.1)
	
	local elephant = display.newImage("Elephant1.png",420,40,nil,0.1)
	elephant.xScale = .7
	elephant.yScale = .7
	
	
	
	
	
--========================================================================================
-- Adding all object with the Group.
--========================================================================================	
	localGroup:insert(BG2)
	localGroup:insert(Train_Sun)
	localGroup:insert(Airplane)
	localGroup:insert(Cloud2)
	localGroup:insert(Cloud3)
	
	TrainGroup:insert(elephant)
	TrainGroup:insert(TrainRail)
	TrainGroup:insert(One)
	
	 mainGroup:insert(localGroup)	
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
		localGroup:removeSelf()
		
	end
	
--========================================================================================
	-- Airplane  Animation
--========================================================================================
	
	
	local function goStart(event)
	   if(event.phase == "began") then
	     Airplane:removeEventListener("touch", goStart)	
	     audio.play(AirSound)
	     transition.to(Airplane, { time=5000, x = -170, onComplite = nil})
	    end
	end	
	
    Airplane:addEventListener("touch", goStart)	
--====================================================================
--Train  movement
--====================================================================	
      
    local function Speech(event)
       audio.play(Tap_on_Elephant)
    end
     
     transition.to( TrainRail, { time=1400, x=300,onComplete=timer.performWithDelay( 2500,Speech, 1 )})


--====================================================================
--Train go out  movement
--====================================================================	
  
  
  local function goNext(event)
	    
	    -- cleanup()
	   	director:changeScene("Train_Two", "crossfade")
	end
  
  
  
   local function OneAnim(event)
         One.alpha =1
         transition.to(One,{time=500, alpha=1, yScale=1, xScale=1, onComplete=nil})
        end
   
   
   local function out(event)
         --transition.to(One   , { time=4470, x = -500})
        -- transition.to(elephant, { time=4500, x = -500})
	     transition.to(TrainGroup, { time=4000, x = -1200, onComplete=timer.performWithDelay( 3000,goNext, 1 )})
	end	
	
--========================================================================================
--Elephant  movement
--========================================================================================	
    local function abc(event)
        audio.play(awesomeSound)
        audio.play(clapplingSound)
    end
    
    
    local function goDown(event)
        if(event.phase == "began") then
         audio.play(OneEle)
         timer.performWithDelay( 1000, abc, 1 )
         OneAnim()
         transition.to(elephant, { time=400, xScale= 1, yScale =1, x = 620, y=370,onComplete=timer.performWithDelay( 5000,out, 1 )})
	   end
	end	
	
	elephant:addEventListener("touch", goDown)	

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