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
	
	local BG2 = display.newImage("AbacusBG.jpg")
	local abcus = display.newImage("Abacus.png",100,30)
	local backB = display.newImage("back.png",0,680)
	backB.yScale =.5
	backB.xScale =.5
    
--========================================================================================
-- Adding all object with the Group.
--========================================================================================	
	localGroup:insert(BG2)
	localGroup:insert(abcus)
	localGroup:insert(backB)
	
--========================================================================================
--Memory clinup 
--========================================================================================		
	local function cleanup()
		
		
		BG2:removeSelf()
     	nextB:removeSelf()
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
	   	director:changeScene("OptionMenu", "crossfade")
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