module(..., package.seeall)

new = function ( params )

--====================================================================
-- IMPORT DIRECTOR CLASS
--====================================================================
	
	local director = require("director")

--====================================================================
-- Sounds
--====================================================================	
     local avc1 = audio.loadStream("Single Cow-Sound.mp3")
     local oneSound = audio.loadStream("oneSound.wav")
     local twoSound = audio.loadStream("twoSound.wav")
     local threeSound = audio.loadStream("threeSound.wav")

--====================================================================
-- Creating display objects and getting handle
--====================================================================
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	
	local One = display.newImage("One1.png",700,510)
    One.alpha =0
    
	local Two = display.newImage("Two1.png",700,510)
	Two.alpha =0
	
	local Three = display.newImage("Three1.png",720,510)
	Three.alpha =0
	
	local Bull = display.newImage("Bull.png",860,30)
	
	local Spumkin = display.newImage("Spumkin.png",150,150)
	local  pumkin = display.newImage("pumkin.png",150,150)
	pumkin.isVisible =false
	pumkin.xScale = .6
	pumkin.yScale = .6
	
	local Spumkin1 = display.newImage("Spumkin.png",350,400)
	local  pumkin1 = display.newImage("pumkin.png",350,400)
	pumkin1.isVisible =false
	pumkin1.xScale = .6
	pumkin1.yScale = .6
	
	local Spumkin2 = display.newImage("Spumkin.png",-20,400)
	local  pumkin2= display.newImage("pumkin.png",-20,400)
	pumkin2.isVisible =false
	pumkin2.xScale = .6
	pumkin2.yScale = .6
	
	local nextB = display.newImage("next.png",830,650)
	 local backB = display.newImage("back.png",30,650)
	local text= display.newText("text2",410,120)

--====================================================================
-- Insert object in the group
--====================================================================
	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	
	localGroup:insert(Spumkin)
	localGroup:insert(pumkin)
	
	localGroup:insert(Spumkin1)
	localGroup:insert(pumkin1)
	
	localGroup:insert(Spumkin2)
	localGroup:insert(pumkin2)
	
	localGroup:insert(nextB)
	localGroup:insert(backB)
	
	localGroup:insert(One)
	localGroup:insert(Two)
	localGroup:insert(Three)

--====================================================================
-- Memory clinup
--====================================================================
	local function cleanup()
	
		BG2:removeSelf()
		Tree:removeSelf()
		lif:removeSelf()
		Bull:removeSelf()
		nextB:removeSelf()
		backB:removeSelf()
		
		One:removeSelf()
		Two:removeSelf()
		Three:removeSelf()
		
		Spumkin:removeSelf()
		Spumkin1:removeSelf()
		Spumkin2:removeSelf()
		
		pumkin:removeSelf()
		pumkin1:removeSelf()
		pumkin2:removeSelf()
		
		--Watermelon1:removeSelf()
		localGroup:removeSelf()
	
	end
--====================================================================
	-- Bull Coming Animation
--====================================================================
	
	transition.to(Bull, { time=1000, x = 850, onComplite = nil})
	
--====================================================================
	-- Pumpkin Tuch Animation
--====================================================================	
 local counter = 0
  
       local function check()
		                if(counter == 1) then
		                  audio.play(oneSound)
		                  One.alpha =1
		                  Two.alpha =0
		                  Three.alpha =0
		                end
		                
		                if(counter == 2) then
		                   audio.play(twoSound)
		                   One.alpha =0
		                   Two.alpha =1
		                   Three.alpha =0
		                end
		                
		                if(counter == 3) then
		                  audio.play(threeSound)
		                  One.alpha =0
		                  Two.alpha =0
		                  Three.alpha=1
		                end
		                
	   end
	   	                
--1st-------


local function anim(event)
	 if(event.phase == "began") then
		pumkin:removeEventListener("touch", anim)
		Spumkin.isVisible = false
		pumkin.isVisible = true
		counter = counter + 1
		transition.to(pumkin, { time=500, xScale=1, yScale=1,onComplete=Again1 })
		check(counter)
	 end
    end
	
  

--2nd--------

local function Anim1(event)
	 if(event.phase == "began") then
		Spumkin1:removeEventListener("touch",Spumkin1)
		Spumkin1.isVisible = false
		pumkin1.isVisible = true
		counter = counter + 1
		transition.to(pumkin1, { time=500, xScale=1, yScale=1,onComplete=Again1 })
		check(counter)
	 end
    end
	
 
   
--3rd------  
 
     local function Anim2(event)
      if(event.phase == "began") then
		Spumkin2:removeEventListener("touch", Anim2)
		Spumkin2.isVisible = false
		pumkin2.isVisible = true
		counter = counter + 1
		transition.to(pumkin2, { time=500, xScale=1, yScale=1,onComplete=Again1 })
        check(counter)
      end
     end
     
     
    
 Spumkin:addEventListener("touch", anim)
 Spumkin1:addEventListener("touch",Anim1)	
 Spumkin2:addEventListener("touch", Anim2)	
 
 
	
--===================================================================
	-- Bull lif  movement on user touch..
--====================================================================
 
	local function goBull(event)
	  if(event.phase == "began") then
	   		audio.play(avc1)
	   		transition.to(Bull, { time=1000, x=825, y=230,  onComplete=elsticBehaviour })
	   end
    end
	
	Bull:addEventListener("touch", goBull)
		
--====================================================================
	-- Goto Next 
--====================================================================
		 	   	
local function goNext(event)
   if(event.phase == "began") then
	   	nextB:removeEventListener("touch", goNext)
        local function next(event)
                 
                 cleanup()
		         director:changeScene("Four", "crossfade")
	      end
        
        local function elsticBehaviour2(event)
        	nextB.xReference =-90
        	transition.to( nextB, { time=200, xScale = 1,transition=easing.inOutQuad, onComplete=next})
        end
        
        local function elsticBehaviour1(event)
        	nextB.xReference = -90
        	transition.to( nextB, { time=400, xScale = .6,  transition=easing.inOutQuad, onComplete=elsticBehaviour2})
        end 
        
        local function elsticBehaviour(event)
        	nextB.xReference = -100
        	transition.to( nextB, { time=200, xScale = 1, transition=easing.inOutQuad, onComplete=elsticBehaviour1})
        end
      
        transition.to( nextB, { time=200, onComplete=elsticBehaviour })
	end
end

	
	nextB:addEventListener("touch", goNext)		
--========================================================================================
	-- Goto  Back 
--========================================================================================

		 	   	
local function goBack(event)
     if(event.phase == "began") then
	   	backB:removeEventListener("touch", goNext)
        local function next(event)
             
                 cleanup()
		         director:changeScene("Two", "crossfade")
	      end
        
        local function elsticBehaviour2(event)
        	backB.xReference =-90
        	transition.to( backB, { time=200, xScale = 1,transition=easing.inOutQuad, onComplete=next})
        end
        
        local function elsticBehaviour1(event)
        	backB.xReference = -90
        	transition.to( backB, { time=400, xScale = .6,  transition=easing.inOutQuad, onComplete=elsticBehaviour2})
        end 
        
        local function elsticBehaviour(event)
        	backB.xReference = -100
        	transition.to( backB, { time=200, xScale = 1, transition=easing.inOutQuad, onComplete=elsticBehaviour1})
        end
      
        transition.to( backB, { time=200, onComplete=elsticBehaviour })
	end
end

	
	backB:addEventListener("touch", goBack)		
		
	 
--====================================================================
	-- INITIALIZE
--====================================================================
	
	local initVars = function ()
		
	end
	
  ------------------
	-- Initiate variables
  ------------------
	
	initVars()
	return localGroup
	
end