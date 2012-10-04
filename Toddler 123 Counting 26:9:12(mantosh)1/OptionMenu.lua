module(..., package.seeall)

new = function ( params )
--====================================================================--
-- IMPORT DIRECTOR CLASS
--====================================================================--
	
	local director = require("director")
	

--====================================================================--
-- Creating display objects and getting handle
--====================================================================--
	local localGroup = display.newGroup()
	local OptionBG = display.newImage("OptionBG.jpg")
	local OptionGuava = display.newImage("OptionGuava.png",40,50)
	local OptionTrain = display.newImage("OptionTrain.png",500,10)
	local OptionChok = display.newImage("OptionChok.png",40,430)
	local MatchingButton = display.newImage("Matching_Icon.png",540,520)
	local AbacusButton = display.newImage("AbacusButton.png",300,280)
	
	--local nextB = display.newImage("next.png",830,550)
	
	localGroup:insert(OptionBG)
	localGroup:insert(OptionGuava)
	localGroup:insert(OptionTrain)
	localGroup:insert(OptionChok)
	localGroup:insert(MatchingButton)
	localGroup:insert(AbacusButton)
	
	--localGroup:insert(nextB)
	
		local function cleanup()
		OptionBG:removeSelf()
		OptionGuava:removeSelf()
		OptionTrain:removeSelf()
		OptionChok:removeSelf()
		MatchingButton:removeSelf()
		AbacusButton:removeSelf()
		localGroup:removeSelf()
	   end

--====================================================================--
	-- Rabbit Coming Animation
--====================================================================--
	
	
	
		
--====================================================================--
	-- Pear Animation and go next
--====================================================================--
	
--Button anim	    
	   
	   	
local function goNext(event)
	   	OptionGuava:removeEventListener("touch", goNext)
        local function StoneAnimation()
        
            local function next(event)
             --cleanup()
               director:changeScene("One", "crossfade")
	        end
	   
			local animUp = function()
			    transition.to( OptionGuava, { time=100, xScale=1,yScale=1, onComplete = next})
			end
			
			    transition.to( OptionGuava, { time=100,xScale=.7, yScale=.7, onComplete = animUp})
	    end
		
		
	StoneAnimation()
		
	
end

	
	OptionGuava:addEventListener("touch", goNext)
	
--====================================================================--
	-- Train Animation and go inside
--====================================================================--
	
--Button anim	    
	   
	   	
local function goNext(event)
	   	OptionGuava:removeEventListener("touch", goNext)
        local function StoneAnimation()
        
            local function next(event)
              -- cleanup()
               director:changeScene("Train_One", "crossfade")
	        end
	   
			local animUp = function()
			    transition.to( OptionTrain, { time=100, xScale=1,yScale=1, onComplete = next})
			end
			
			    transition.to( OptionTrain, { time=100, xScale=.7, yScale=.7, onComplete = animUp})
	    end
		
		
	StoneAnimation()
		
	
end

	
	OptionTrain:addEventListener("touch", goNext)
		
	
		
--====================================================================--
	-- Matching Animation and go inside
--====================================================================--
	
--Button anim	    
	   
	   	
local function goNext(event)
	    MatchingButton:removeEventListener("touch", goNext)
        local function StoneAnimation()
        
            local function next(event)
              -- cleanup()
               director:changeScene("MatchingOne", "crossfade")
	        end
	   
			local animUp = function()
			    transition.to( MatchingButton, { time=100, xScale=1,yScale=1, onComplete = next})
			end
			
			    transition.to( MatchingButton, { time=100, xScale=.7, yScale=.7, onComplete = animUp})
	    end
		
		
	StoneAnimation()
		
	
end

	
	MatchingButton:addEventListener("touch", goNext)
		
--====================================================================--
	-- Abacus Animation and go inside
--====================================================================--
	
--Button anim	    
	   
	   	
local function goNext(event)
	    AbacusButton:removeEventListener("touch", goNext)
	    
        local function ButtonAnimation()
        
            local function next(event)
              -- cleanup()
               director:changeScene("AbacusOne", "crossfade")
	        end
	   
			local animUp = function()
			    transition.to( AbacusButton, { time=100, xScale=1,yScale=1, onComplete = next})
			end
			
			    transition.to( AbacusButton, { time=100, xScale=.7, yScale=.7, onComplete = animUp})
	    end
		
		
	ButtonAnimation()
		
	
end

	
	AbacusButton:addEventListener("touch", goNext)
		
		
		
	
	--====================================================================--
	-- INITIALIZE
	--====================================================================--
	
	local initVars = function ()
		
	end
	
	------------------
	-- Initiate variables
	------------------
	
	initVars()
	return localGroup
	
end