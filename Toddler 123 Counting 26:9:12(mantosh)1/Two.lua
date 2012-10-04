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
      
      
--====================================================================
-- Creating display objects and getting handle
--====================================================================
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	
	local One = display.newImage("One1.png",700,510)
    One.alpha =0
    
	local Two = display.newImage("Two1.png",720,510)
	Two.alpha =0
	
	local Bull = display.newImage("Bull.png",860,30)
	
	local Green_pear = display.newImage("Green_pear.png",270,250)
	
	local Green_pear_hand = display.newImage("Green_pear_hand.png",270,250)
	Green_pear_hand.isVisible =false
	Green_pear_hand.xScale = .9
	Green_pear_hand.yScale = .9
	
	local Red_pear = display.newImage("Red_pear.png",60,290)
	
	local Red_pear_Hand = display.newImage("Red_pear_Hand.png",0,290)
	Red_pear_Hand.isVisible =false
	Red_pear_Hand.xScale = .9
	Red_pear_Hand.yScale = .9
	
    local nextB = display.newImage("next.png",830,650)
    local backB = display.newImage("back.png",30,650)
    

--====================================================================
-- Insert object in the group
--====================================================================
	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	
	
	localGroup:insert(Red_pear)
	localGroup:insert(Green_pear)
	
	localGroup:insert(Green_pear_hand)
	localGroup:insert(Red_pear_Hand)
	
	localGroup:insert(nextB)
	localGroup:insert(backB)
	
	localGroup:insert(One)
	localGroup:insert(Two)
	
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
		
		Two:removeSelf()
		
		Green_pear:removeSelf()
		Red_pear:removeSelf()
		
		Red_pear_Hand:removeSelf()
		Green_pear_hand:removeSelf()
		
		localGroup:removeSelf()
	
	end
--====================================================================
	-- Bull Coming Animation
--====================================================================
	
	transition.to(Bull, { time=1000, x = 850, onComplite = nil})
	
		
--====================================================================
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
	-- Pear movement on user touch..
--====================================================================
 local counter = 0
  
       local function check()
		                if(counter == 1) then
		                  audio.play(oneSound)
		                  One.alpha =1
		                  Two.alpha =0
		                  
		                end
		                
		                if(counter == 2) then
		                   audio.play(twoSound)
		                   One.alpha =0
		                   Two.alpha =1
		                   
		                end
		                
		end
	   
	local function Anim2(event)
    	    if(event.phase == "began") then
		        Green_pear.isVisible = false
		        Green_pear_hand.isVisible = true
		        counter = counter + 1
		        transition.to(Green_pear_hand, { time=500, xScale=1.2, yScale=1.2 })
		        check(counter)
	         end
    end
	Green_pear:addEventListener("touch", Anim2)
	
	local function Anim1(event)
	    if(event.phase == "began") then
		    Red_pear.isVisible = false
		    Red_pear_Hand.isVisible = true
		    counter = counter + 1
	        transition.to(Red_pear_Hand, { time=500, xScale=1.2, yScale=1.2 })
	        check(counter)
	    end
    end
    
    Red_pear:addEventListener("touch", Anim1)
	
	
			
--========================================================================================
	-- Goto Next 
--========================================================================================

		 	   	
local function goNext(event)
	   	if(event.phase == "began") then
	      	nextB:removeEventListener("touch", goNext)
	      	
             local function next(event)
                  cleanup()
		          director:changeScene("Three", "crossfade")
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
		         director:changeScene("One", "crossfade")
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

	
	backB:addEventListener("touch",goBack)		
		
	
   	
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