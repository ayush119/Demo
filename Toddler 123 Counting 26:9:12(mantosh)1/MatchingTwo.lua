module(..., package.seeall)

new = function ( params )
--========================================================================================
-- IMPORT DIRECTOR CLASS
--========================================================================================
	
	local director = require("director")
	
--========================================================================================
-- Sounds
--========================================================================================	
    
     local  onewav = audio.loadStream("oneSound.wav")
     local  twowav = audio.loadStream("twoSound.wav")
     local  threewav = audio.loadStream("threeSound.wav")
     local  fourwav = audio.loadStream("fourSound.wav")
     
      
--========================================================================================
-- Creating display objects and getting handle
--========================================================================================
	local localGroup = display.newGroup()
	
	local BG2 = display.newImage("MatchBG.jpg")
	
	
	local One = display.newImage("One1.png",50,-40)
	--One.isVisible = false
	One.yScale =.3
	One.xScale =.3
	
	
	local Two = display.newImage("Two1.png",30,60)
	--Two.isVisible = false
	Two.yScale =.3
	Two.xScale =.3
	
	local Three = display.newImage("Three1.png",30,130)
	--Three.isVisible = false
	Three.yScale =.3
	Three.xScale =.3
	
	local Four = display.newImage("Four.png",25,200)
	--Four.isVisible = false
    Four.yScale =.3
	Four.xScale =.3
    
    local Five= display.newImage("Five.png",25,270)
	--Four.isVisible = false
    Five.yScale =.3
	Five.xScale =.3

   local Six  = display.newImage("Six.png",25,340)
	--Four.isVisible = false
    Six.yScale =.3
	Six.xScale =.3

   local Seven = display.newImage("Seven.png",25,430)
  	--Four.isVisible = false
    Seven.yScale =.3
	Seven.xScale =.3

    local Eight = display.newImage("Eight.png",25,500)
	--Four.isVisible = false
    Eight.yScale =.3
	Eight.xScale =.3

   local Nine = display.newImage("Nine.png",30,560)
	--Four.isVisible = false
    Nine.yScale =.3
	Nine.xScale =.3

    local Ten = display.newImage("Ten.png",20,630)
	--Four.isVisible = false
    Ten.yScale =.3
	Ten.xScale =.3


   local lion = display.newImage("lion.png",600,0)
	--Four.isVisible = false
    lion.yScale =.5
	lion.xScale =.5
	
	
   local lion = display.newImage("stobary.png",600,60)
	--Four.isVisible = false
    lion.yScale =.4
	lion.xScale =.4
 
   local lion = display.newImage("stobary.png",680,60)
	--Four.isVisible = false
    lion.yScale =.4
	lion.xScale =.4

--[[
--right side--

local One = display.newImage("One1.png",850,460)
	--One.isVisible = false
	One.yScale =.3
	One.xScale =.3
	
	
	local Two = display.newImage("Two1.png",830,630)
	--Two.isVisible = false
	Two.yScale =.3
	Two.xScale =.3
	
	local Three = display.newImage("Three1.png",830,130)
	--Three.isVisible = false
	Three.yScale =.3
	Three.xScale =.3
	
	local Four = display.newImage("Four.png",825,200)
	--Four.isVisible = false
    Four.yScale =.3
	Four.xScale =.3
    
    local Five= display.newImage("Five.png",825,410)
	--Four.isVisible = false
    Five.yScale =.3
	Five.xScale =.3

   local Six  = display.newImage("Six.png",825,340)
	--Four.isVisible = false
    Six.yScale =.3
	Six.xScale =.3

   local Seven = display.newImage("Seven.png",855,80)
	--Four.isVisible = false
    Seven.yScale =.3
	Seven.xScale =.3

   local Eight = display.newImage("Eight.png",840,560)
	--Four.isVisible = false
    Eight.yScale =.3
	Eight.xScale =.3

   local Nine = display.newImage("Nine.png",840,280)
	--Four.isVisible = false
    Nine.yScale =.3
	Nine.xScale =.3

   local Ten = display.newImage("Ten.png",830,10)
	--Four.isVisible = false
    Ten.yScale =.3
	Ten.xScale =.3

--]]	
		
	
	local backB = display.newImage("back.png",0,680)
	backB.yScale =.5
	backB.xScale =.5
	
	
	--local nextP = display.newImage("next.png",130,600)
	--nextP.xscale = -10nextP.yScale= -10
    
--========================================================================================
-- Adding all object with the Group.
--========================================================================================	
	localGroup:insert(BG2)
	
	
	localGroup:insert(One)
	localGroup:insert(Two)
	localGroup:insert(Three)	
	localGroup:insert(Four)
	
	localGroup:insert(lion)
	
	localGroup:insert(backB)
	
	
--========================================================================================
--Memory clinup 
--========================================================================================		
	local function cleanup()
		
		
		BG2:removeSelf()
     	nextB:removeSelf()
     	lion:removeSelf()
		
		localGroup:removeSelf()
	end


--========================================================================================
	-- One Go to One
--========================================================================================
	local function goNext(event)
	    if( event.phase == "began") then
	    
	    end
	end

	--One:addEventListener("touch", goNext)
	

--========================================================================================
	-- Goto prev 
--========================================================================================
	local function goPrev(event)
	    if( event.phase == "began") then
	    backB:removeEventListener("touch", goPrev)
	   	director:changeScene("MatchingOne", "crossfade")
	   end
	end

	backB:addEventListener("touch", goPrev)

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