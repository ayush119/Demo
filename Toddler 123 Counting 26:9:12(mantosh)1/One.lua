module(..., package.seeall)

new = function ( params )
--========================================================================================
-- IMPORT DIRECTOR CLASS
--========================================================================================
	
	local director = require("director")
	
--========================================================================================
-- Sounds
--========================================================================================	
     local  cowSound = audio.loadStream("Single Cow-Sound.mp3")
     local  avc2 = audio.loadStream("oneSound.wav")
      
--========================================================================================
-- Creating display objects and getting handle
--========================================================================================
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	
	One = display.newImage("One1.png",520,510)
	One.alpha =0
	One.yScale =.2
	One.xScale =.2
	
	
    local sheet2 = graphics.newImageSheet( "twter.png", { width=90.7, height=74, numFrames=4 } )
    local twt = display.newSprite( sheet2, { name="twt", start=1, count=4, time=1500 } )
    twt.x = 190
    twt.y = 30
    
	local Bull = display.newImage("Bull.png",860,30)
	local Watermelon1 = display.newImage("Watermelon1.png",140,290)
	Watermelon1.yScale =.2
	Watermelon1.xScale =.2
	Watermelon1.alpha =0
	
	local Watermelon = display.newImage("Watermelon.png",150,300)
	
	local nextB = display.newImage("next.png",830,650)
	local backB = display.newImage("back.png",30,650)
--========================================================================================
-- Adding all object with the Group.
--========================================================================================	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	localGroup:insert(twt)
	localGroup:insert(Watermelon)
	localGroup:insert(Watermelon1)
	localGroup:insert(One)
	localGroup:insert(nextB)
	localGroup:insert(backB)
	
--========================================================================================
--Memory clinup 
--========================================================================================		
	local function cleanup()
		BG2:removeSelf()
		Tree:removeSelf()
		lif:removeSelf()
		Bull:removeSelf()
		One:removeSelf()
		Watermelon:removeSelf()
		Watermelon1:removeSelf()
		nextB:removeSelf()
		backB:removeSelf()
		localGroup:removeSelf()
	end
	
--========================================================================================
	-- Bull Coming Animation
--========================================================================================
	
	transition.to(Bull, { time=1000, x = 850, onComplite = nil})
	
	
	
	
--========================================================================================
	-- Watermelon Tuch Animation
--========================================================================================	

	local function goTo(event)
		if(event.phase == "began") then
		Watermelon.alpha =0
		One.alpha = 1
		audio.play(avc2)
		transition.to(One,{time=500, yScale=1, xScale=1})
		transition.to( Watermelon1,{ time=500, yScale =1, xScale =1, onComplete=nil })
		Watermelon1.alpha = 1
		Watermelon:removeEventListener("touch", goTo)
     end
	end
	
	Watermelon:addEventListener("touch", goTo)
	
	
--========================================================================================
	-- Tree  lif movement on user touch..
--========================================================================================
 
	local function goBack(event)
	 if(event.phase == "began") then
		transition.to( lif, { time=1000,x=500 , y=500, onComplete=nil })
		timer.performWithDelay( 1000, nil, 1 )
		transition.to( lif, { time=8000, x=550 ,y=500, onComplete=nil })
		timer.performWithDelay( 1000, nil, 1 )
		transition.to( lif, { time=1000, x=580 ,y=500, onComplete=nil })
		timer.performWithDelay( 1000, nil, 1 )
		transition.to( lif, { time=1000, x=400 ,y=500, onComplete=nil })
		--instance:play()
		
		transition.to( lif, { time=800, x=400 ,y=500, onComplete=nil })
	  end
	end
	
	--Tree:addEventListener("touch", goBack)
	
--====================================================================================
	--twt bird move
--====================================================================================
	
	  local function twtmove(event)
	     if(event.phase == "began") then
			          --local animUp = function()
			                twt:play()
			                twtTween = transition.to( twt, { time=7000, y=100,x=1090,onComplete=twtmove })
			          --end
			          twt:removeEventListener("touch", twtmove)
                     -- twtTween = transition.to( twt, { time=8000, y=100,x=990,onComplete=animUp,twt:scale(-1,1) })
            end
	    end
		
	   
	 twt:addEventListener("touch", twtmove)
	
--========================================================================================
	-- Bull lif  movement on user touch..
--========================================================================================
 
	local function goBull(event)
	   if(event.phase == "began") then
		audio.play(cowSound)
		transition.to(Bull, { time=100, x=825, y=230,  onComplete=nil })
	  end		
	end
	
	    Bull:addEventListener("touch", goBull)
		
--========================================================================================
	-- Goto Next 
--========================================================================================

		 	   	
local function goNext(event)
    if(event.phase == "began") then
	   	nextB:removeEventListener("touch", goNext)
               local function next(event)
                       if(twtTween~=nil) then
	                      transition.cancel(twtTween)
	                      twt:pause()
	                   end
                    cleanup()
		            director:changeScene("Two", "crossfade")
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
      
        transition.to( nextB, { time=200, onComplete = elsticBehaviour })
    end
	
end

	
	nextB:addEventListener("touch", goNext)		
--========================================================================================
	-- Goto  Back 
--========================================================================================

		 	   	
local function goNext(event)
   if(event.phase == "began") then
	   	backB:removeEventListener("touch", goNext)
        local function next(event)
                 if(twtTween~=nil) then
	               transition.cancel(twtTween)
	               twt:pause()
	             end
                 cleanup()
		         director:changeScene("OptionMenu", "crossfade")
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

	
	backB:addEventListener("touch", goNext)		
		
--========================================================================================
	-- One Speek
--========================================================================================
		


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