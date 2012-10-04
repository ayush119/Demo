module(..., package.seeall)

new = function ( params )

--====================================================================
-- IMPORT DIRECTOR CLASS
--====================================================================
	
	local director = require("director")
	local sprite = require( "sprite" )
    local xenomi=require("main")
    
--====================================================================
-- Sounds
--====================================================================
    local tapSound1 = audio.loadSound( "Intro1.wav" )
	local tapSound2 = audio.loadSound( "Intro2.wav" )
	local tapSound3 = audio.loadSound( "Intro3.wav" )
	
	local birdsound = audio.loadSound( "birdsound.wav")
	local baseline = 280
	
--====================================================================
-- Creating display objects and getting handle
--====================================================================
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG2.jpg")
	
	local Rabbit = display.newImage("Rabbit.png",170,35)
	
	local nextB = display.newImage("next.png",860,650)
	nextB.isVisible = false
	
	local cloud1 = display.newImage("cloud1.png",830,50)
	local tree1 = display.newImage("tree1.png",668,18)
	
	local leaf = display.newImage("leaf.png",730,150)
	leaf.alpha=0
	
	local leaf1 = display.newImage("leaf1.png",850,150)
	leaf1.alpha=0
	
	local leaf2 = display.newImage("leaf2.png",830,150)
	leaf2.alpha=0
	
	
--adding the bird animation
   local birdSheet = sprite.newSpriteSheet( "bird copy.png", 252, 120 )
   local birdSet = sprite.newSpriteSet( birdSheet, 1, 6 )
   sprite.add( birdSet, "bird", 1, 6, 2000, -2 )

--create an instance of our animated sprite
  local bird = sprite.newSprite( birdSet )
  bird.x = 800
  bird.y = 60
  bird:scale(.6,.6)
  bird.alpha =0


 local sheet1 = graphics.newImageSheet( "rab.png", { width=114, height=167, numFrames=28 } ) --34
 local instance1 = display.newSprite( sheet1, { name="rabbit", start=5, count=10, time=3000 } )
 instance1:scale(3,3)
 instance1.isVisible =false


--[[local sheet2 = graphics.newImageSheet( "rab2.png", { width=114, height=167, numFrames=20 } )--34
  local instance2 = display.newSprite( sheet2, { name="rabbit", start=1, count=25, time=3000 } )
  instance2:scale(4,4)
  instance2.isVisible =false--]]
 

  local sheet3 = graphics.newImageSheet( "rab3.png", { width=138, height=167, numFrames=20 } )--24
  local instance3 = display.newSprite( sheet3, { name="rabbit", start=4, count=10, time=2000 } )
  instance3:scale(3,3)
  instance3.isVisible =false

--[[local sheet4 = graphics.newImageSheet( "rab4.png", { width=114, height=167, numFrames=54 } )--54
  local instance4 = display.newSprite( sheet4, { name="rabbit", start=1, count=25, time=3000 } )
  instance4:scale(4,4)
  instance4.isVisible =false--]]

  local sheet5 = graphics.newImageSheet( "rab5.png", { width=114, height=168, numFrames=29 } )--29
  local instance5 = display.newSprite( sheet5, { name="rabbit", start=12, count=10, time=2000 } )
  instance5:scale(3,3)
  instance5.isVisible =false
	
--====================================================================
-- Inserting object in the group
--====================================================================
	
	
	localGroup:insert(BG2)
	localGroup:insert(cloud1)
	localGroup:insert(Rabbit)
	localGroup:insert(nextB)
	localGroup:insert(tree1)
	localGroup:insert(leaf)
	localGroup:insert(leaf1)
	localGroup:insert(leaf2)
	localGroup:insert(bird)
	localGroup:insert(Rabbit)
	
--====================================================================
-- Memory cleanUp
--====================================================================

	local function cleanup()
		
		tapSound1=nil
	    tapSound2=nil
	    tapSound3=nil
	    birdmove =nil
		transition.cancel(birdTween)
	    audio.stop(tapSound)
	end





--====================================================================
	--bird animation
--====================================================================
	  local function birdAnim()
	        bird.alpha =1
	        bird:prepare( "bird" )
            bird:play()
      end	   	
	  birdAnim()
	
	     
--bird movement
	  local function birdmove()
			   local animUp = function()
			         local tempy = math.random(60,120)
			         local tempx = math.random(200,1000)
			         birdTween = transition.to( bird, { time=4000, y=tempy,x=tempx,onComplete=birdmove })
			   end
			         local tempy1 = math.random(60,120)
			         local tempx1 = math.random(100,1000)
			         birdTween = transition.to( bird, { time=4000, y=tempy1,x=tempx1,onComplete=animUp })
	  end
		
	  birdmove()
	  
	  
	  local function rotate()
	        audio.play(birdsound)
            bird.rotation = bird.rotation + 15
            bird:removeEventListener("touch",rotate)
      end
      bird:addEventListener("touch",rotate)
	
 --===========================================================================
    --rabbit speaking animation
 --===========================================================================
  
    local function playanim5()
                 instance5:pause()
                 instance5.isVisible = true
                 instance5.touch =false
                 --audio.stop(avc)
                 local delaytime= function() birdAnim(); nextB.isVisible =true; instance5:pause();nextB.isVisible = true end
                 
                 timer.performWithDelay(2000, delaytime, 1)
                 local backgroundMusicChannel = audio.play(tapSound3, { loops=0 }  ) 
                 local stop=audio.stopWithDelay( 3000, { channel = backgroundMusicChannel} )
                  Rabbit.isVisible =false
                 instance5.x = Rabbit.x --475--3 * display.contentWidth / 6 + 10
                 instance5.y = Rabbit.y --380--baseline +25
                 instance5:play()	
     end
     
     local function playanim3()
                 instance3:pause()
                 instance3.isVisible = true
                 instance3.touch =false
                -- audio.stop(avc)
                 local delaytime= function() instance3:pause();instance3.isVisible= false;playanim5() end
                 timer.performWithDelay(2000, delaytime, 1)
                 local backgroundMusicChannel = audio.play(tapSound2, { loops=0 }  ) 
                 local stop=audio.stopWithDelay( 3000, { channel = backgroundMusicChannel} )
                  Rabbit.isVisible =false
                 instance3.x = Rabbit.x --475--3 * display.contentWidth / 6 + 10
                 instance3.y = Rabbit.y --380--baseline +25
                 instance3:play()	
     end
       
       local function playanim1()
                 instance1:pause()
                 instance1.isVisible = true
                 instance1.touch =false
                 --audio.stop(avc)
                 local delaytime= function() instance1:pause();instance1.isVisible= false;playanim3() end
                 timer.performWithDelay(3000, delaytime, 1)
                 local backgroundMusicChannel = audio.play(tapSound1, { loops=0 }  ) 
                 local stop=audio.stopWithDelay( 3000, { channel = backgroundMusicChannel} )
                  Rabbit.isVisible =false
                 instance1.x = Rabbit.x --475--3 * display.contentWidth / 6 + 10
                 instance1.y = Rabbit.y --380--baseline +25
                 instance1:play()	
                 
     end


--====================================================================
	-- Rabbit Coming Animation
--====================================================================
	
	
	
		Rabbit.yScale = .3
		Rabbit.xScale = .3
		local function goRight(event)
		      transition.to( Rabbit, { time=1000, x=460,  y=400, yScale = 1, xScale = 1 })
		end
        
	    transition.to( Rabbit, { time=1000, yScale = 1, xScale = 1 ,onComplete=playanim1})
--====================================================================
	-- Button Animation and go next
--====================================================================
	
--Button anim	    
	   
	   	
local function goNext(event)
	   	
       nextB:removeEventListener("touch", goNext) 
       local function next(event)
        cleanup()
		director:changeScene("OptionMenu", "crossfade")
	   end
        
        
        local function elsticBehaviour2(event)
        	nextB.xReference =-90
        	transition.to( nextB, { time=80, xScale = 1,transition=easing.inOutQuad, onComplete=next})
        end
        local function elsticBehaviour1(event)
        	nextB.xReference = -90
        	transition.to( nextB, { time=80, xScale = .7,  transition=easing.inOutQuad, onComplete=elsticBehaviour2})
        end 
        
        local function elsticBehaviour(event)
        	nextB.xReference = -100
        	transition.to( nextB, { time=40, xScale = 1, transition=easing.inOutQuad, onComplete=elsticBehaviour1})
        end
      
        transition.to( nextB, { time=40, onComplete=elsticBehaviour })
	
end

	
	nextB:addEventListener("touch", goNext)
	
--==========================================================================================
	-- cloud1 Coming Animation
--==========================================================================================
	
		local function cloud1Animation()
			local animUp = function()
				anim = transition.to( cloud1, { time=17000, x=1093, onComplete=cloud1Animation })
			end
			
			   anim = transition.to( cloud1, { time=17000, x=-20, onComplete=animUp })
		end
		
		cloud1Animation()
		


--====================================================================
	-- for tree moment
--====================================================================
        local function next4()
		  transition.to(leaf2,{time=1000, alpha=1,x=800,y=450, onComplete=nil})
		
		end
		
		local function next3()
		  transition.to(leaf1,{time=1000, alpha=1,y=430, onComplete=next4})
		
		end
		
		local function next2()
		  transition.to(leaf,{time=1000, alpha=1,y=500, onComplete=next3})
		
		end
		
		
		local function next1()
		  transition.to(tree1,{rotation=0,time=1000, alpha=1, onComplete=next2})
		
		end
		
		local function goNext()
		  transition.to(tree1,{rotation=10,time=1000, alpha=1, onComplete=next1})
		
		end
		
		tree1:addEventListener("touch",goNext)
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