module(..., package.seeall)

new = function ( params )
--====================================================================
-- IMPORT DIRECTOR CLASS
--====================================================================
	
	local director = require("director")
	

--====================================================================
--Sounds
--====================================================================
local vanish = audio.loadSound( "vanish.wav")
local avc1 = audio.loadStream("elephant.mp3")

local avc2 = audio.loadStream("oneSound.wav")

local avc3 = audio.loadStream("twoSound.wav")
local avc4 = audio.loadStream("threeSound.wav")   
local avc5 = audio.loadStream("monkey1sound.mp3")     
--====================================================================
-- Creating display objects and getting handle
--====================================================================

	local localGroup = display.newGroup()
	local SunGroup = display.newGroup()
	local TrainGroup = display.newGroup()
	local blurgroup = display.newGroup()
	
	local BG = display.newImage("BG.jpg")
	local cloud = display.newImage("cloud.png",5,665)
	
	local sun = display.newImage("Sun.png",10,10)
	local Sun_Eye = display.newImage("Sun_Eye1.png",90,100)
	local Sun_Eye1 = display.newImage("Sun_Eye1.png",140,100)
	
	local SunSmille = display.newImage("SunSmile.png",70,150)
	
	local one1=display.newImage("one.png",385,430)
    one1.alpha=0
    
	local two = display.newImage("two.png",575,430)
	two.alpha=0
	
	local three= display.newImage("three.png",764,429)
	three.alpha=0
	
----function for star drop
	
	local function X (t)
      return display.contentWidth / 2 + math.sin(t / 900) * display.contentWidth / 3
    end
    
	local blurstar = display.newImage("Star.png",760,10,X(0));
	local text = display.newImage("Text.png",185,-55)
	local star = display.newImage("Star.png",885,120)
	local star1 = display.newImage("Star2.png",825,30)
	local star2 = display.newImage("Star1.png",705,125)
	local train = display.newImage("train.png",1024,130)
	local nextB = display.newImage("StartButton.png",400,655)
	
	local monkey = display.newImage("monkey.png",500,310)
	monkey.alpha=0
    local dall = display.newImage("dall.png",300,290)
    dall.alpha=0
    
    local elephant = display.newImage("elephant.png",645,205)
    elephant.alpha=0
     
    local ballon = display.newImage("ballon.png",440,100)
    ballon.alpha=0
	
--====================================================================
--Inserting object on the group
--====================================================================
	
	blurgroup:insert(blurstar)
	
	SunGroup:insert(sun)
	SunGroup:insert(Sun_Eye)
	SunGroup:insert(Sun_Eye1)
	SunGroup:insert(SunSmille)
	
	
	TrainGroup:insert(text)
	TrainGroup:insert(train)
	TrainGroup:insert(monkey)
	TrainGroup:insert(dall)
	TrainGroup:insert(elephant)
	TrainGroup:insert(one1 )
	TrainGroup:insert(two)
	TrainGroup:insert(three)
	TrainGroup:insert(ballon)
	
	
	localGroup:insert(BG)
	localGroup:insert(cloud)
	localGroup:insert(star)
	localGroup:insert(star1)
	localGroup:insert(star2)
	localGroup:insert(SunGroup)
	localGroup:insert(TrainGroup)
	localGroup:insert(nextB)
	--localGroup:insert(vanish)
--====================================================================
--CleanUp objects 
--====================================================================
		
	local function cleanup()
	    BG:removeSelf()
	    star:removeSelf()
	    star1:removeSelf()
	    star2:removeSelf()
	    train:removeSelf()
	    cloud:removeSelf()
	    nextB:removeSelf()
	    dall:removeSelf()
	    elephant:removeSelf()
	    localGroup:removeSelf()
	    sun:removeSelf()
	    Sun_Eye:removeSelf()
	    Sun_Eye1:removeSelf()
	    SunSmille:removeSelf()
	    blurstar:removeSelf()
	    one1 :removeSelf()
	    two:removeSelf()
	    three:removeSelf()
	    ballon:removeSelf()
	end
--====================================================================
--Moon Movement
--====================================================================	
	
        local function MoonAnimation()
			local anim = function()
				star2Tween = transition.to( SunGroup,{ time=500000, x=10,onComplete=MoonAnimation })
				
			end
			    star2Tween = transition.to( SunGroup,{ time=500000, x=800, onComplete=anim })
		end
      
        MoonAnimation()	
--====================================================================
--Star Movement
--====================================================================	

--1st star	 
       local function star2Animation()
			local anim = function()
				star2Tween = transition.to( star1, { time=500, yScale = .2, xScale = .2 ,onComplete=star2Animation })
			end
			
			    star2Tween = transition.to( star1, { time=500, yScale =.7, xScale = .7, onComplete=anim })
		end
		
		star2Animation()
		
--2nd star 

       local function star2Animation()
			local anim = function()
				star2Tween = transition.to( star, { time=500, yScale = .2, xScale = .2 ,onComplete=star2Animation })
			end
			
			    star2Tween = transition.to( star, { time=500, yScale = .6, xScale = .6, onComplete=anim })
		end
		
		star2Animation()
   


--3rd star

       local function star2Animation()
			local anim = function()
				star2Tween = transition.to( star2, { time=500, yScale = .2, xScale = .2 ,onComplete=star2Animation })
			end
			
			star2Tween = transition.to( star2, { time=500, yScale = .6, xScale = .6, onComplete=anim })
		end
		
		star2Animation()
		
--4th blur star

        local function blurAnimation()
			local anim = function()
				star2Tween = transition.to( blurstar, { time=500, yScale = .4, xScale = .4 ,onComplete=blurAnimation })
			end
			
			star2Tween = transition.to( blurstar, { time=500, yScale = .6, xScale = .6, onComplete=anim })
		end
		
  blurAnimation() 	
		
		
--===========================
--Ballon Movement
--===========================

ballon.yScale =.5
ballon.xScale =.5


   local function BallonAnimation(event)
		 if(event.phase == "began") then
			    transition.to( ballon, { time=1200,x=800,y=-110,onComplete=BallonAnimation })
		  end
	end
 
ballon:addEventListener("touch", BallonAnimation)
	
		
--===========================
  --moon smile animation
--===========================
  
  	    local function SmilleAnimation(event)
			    if(event.phase == "began") then
			       star2Tween = transition.to( SunSmille, { time=4000, yScale = 2, xScale = 1.7, onComplete=nil })
	               
	               local delaytime= function() 
	                   star2Tween = transition.to( SunSmille, { time=5000, yScale = 1, xScale = 1.1 ,onComplete=nil });
	                   end
                       smiletimer = timer.performWithDelay(2000, delaytime, 1)
                end
		end
		
	  sun:addEventListener("touch", SmilleAnimation)  
	  
	  
--=========================
 --Star blur 
--=========================
    local count =0
    local timerid 
        
      function blur(event)
       if(event.phase == "began") then
          local child
          local function abc()
                count=count+1
                --print("counter:",count)
                
                local new = display.capture(blurgroup)
                 if child then
                      child:removeSelf()
                 end
                 child = new
                 blurgroup:insert(new)
                 new.alpha = 1
                 if(count == 250) then
                    timerid = nil
                   --print("now timer:",timerid)
                 end
          end
         audio.play(vanish)
         local function timerval()
            timerid=nil
         end
         timerid = timer.performWithDelay(10, function(event)
                                     blurstar.rotation = blurstar.rotation + 1 
                                     blurstar.x =blurstar.x +1
                                     blurstar.y =blurstar.y +1
                                     abc()
                                     end,250)
                                     
      blurstar:removeEventListener("touch", blur)
    end
  end

      blurstar:addEventListener("touch", blur)

   
--====================================================================
--Moon eye blinking
--====================================================================	
        local function star2Animation()
			local anim = function()
				star2Tween = transition.to( Sun_Eye1,{ time=500, yScale = .6,onComplete=star2Animation })
				
		end
			
			star2Tween = transition.to( Sun_Eye1,{ time=500, yScale = 1, onComplete=anim })
		end
       
       star2Animation()

       local function star2Animation()
			local anim = function()
				star2Tween = transition.to( Sun_Eye,{ time=500, yScale = .6,onComplete=star2Animation })
				
			end
			
			star2Tween = transition.to( Sun_Eye,{ time=500, yScale = 1, onComplete=anim })
		end

       star2Animation()	
       		
--====================================================================
--Monkey  Movement
--====================================================================	
	   	
local function goNext(event)
	   	
       if(event.phase == "began") then
            
			local animUp = function()
			    transition.to( monkey, { rotation =7, time=500, onComplete = next})
			end
			     audio.play(avc5)
			    transition.to( monkey, { rotation = -7, time=500, onComplete = animUp})
	  end	
	end
		

	
	monkey:addEventListener("touch", goNext)
	


--====================================================================
--Dall  Movement
--====================================================================	
        
            
local function dallMove(event)
       
       if(event.phase == "began") then

   	   local function dallAnimation()
   	          
   	       -- monkey.alpha = 1
   	        
			local anim = function()
				star2Tween = transition.to( dall, { time=500, yScale = 1, xScale = 1 })
			end
			
			star2Tween = transition.to( dall, { time=500, yScale = 1.5, xScale = 1.5, onComplete = anim })
		end
		
		dallAnimation()
  end
        
end

dall:addEventListener("touch", dallMove)

--====================================================================
--Elephent Movement
--====================================================================	
        
            
local function elephantMove(event)
       
       if(event.phase == "began") then 
           local anim = function()
			
				star2Tween = transition.to( elephant, { time=500, yScale = 1, xScale = 1 })
			end
			
			star2Tween = transition.to( elephant, { time=500, yScale = 1.5, xScale = 1.5, onComplete = anim })
		   audio.play(avc1)
		
		end       
end

elephant:addEventListener("touch", elephantMove)
		
--====================================================================
--Train spring movement
--====================================================================	

        
       local function elsticBehaviour3(event)
        	train.xReference = 100
        	transition.to( train, { time=70, xScale = 1, transition=easing.inOutQuad})
        	one1.alpha=1
        	two.alpha=1
        	three.alpha=1
        	dall.alpha=1
        	monkey.alpha=1
        	dall.alpha=1
        	elephant.alpha=1
        	ballon.alpha=1
        end
        
        local function elsticBehaviour2(event)
        	train.xReference = 100
        	transition.to( train, { time=70, xScale = 1.25, transition=easing.inOutQuad, onComplete=elsticBehaviour3})
        end
        
        local function elsticBehaviour1(event)
        	train.xReference = 100
        	transition.to( train, { time=70, xScale = 1,transition=easing.inOutQuad, onComplete=elsticBehaviour2})
        end
        
        local function elsticBehaviour(event)
        	train.xReference = 100
        	transition.to( train, { time=70, xScale = 1.5,transition=easing.inOutQuad, onComplete=elsticBehaviour1})
        end
      
        transition.to( train, { time=400, x=500, xScale = 1.25, onComplete=elsticBehaviour })
        
	
	
--====================================================================
--Cloud Movement
--====================================================================	
       
       
        local function cloudAnimation()
			local cloudanim = function()
				cloudTween = transition.to( cloud, { time=5300, yScale = 1, xScale =1 ,onComplete=cloudAnimation })
			end
			
			    cloudTween = transition.to(cloud, { time=5300, yScale = 1.2, xScale =1.2, onComplete=cloudanim })
		end
		
		
		
		
		cloudAnimation()  
        
     
   
--====================================================================
--Text Spring Movement
--====================================================================	



        local function elsticBehaviour3(event)
        	text.yReference = 120
        	transition.to( text, { time=100, yScale = 1, transition=easing.inOutQuad})
        end
        
        local function elsticBehaviour2(event)
        	text.yReference = 120
        	transition.to( text, { time=100, yScale = .75, transition=easing.inOutQuad, onComplete=elsticBehaviour3})
        end
        
        
        local function elsticBehaviour1(event)
        	text.yReference = 120
        	transition.to( text, { time=100, yScale = 1,transition=easing.inOutQuad, onComplete=elsticBehaviour2})
        end
        
        local function elsticBehaviour(event)
        	text.yReference = 120
        	transition.to( text, { time=200, yScale = .4,transition=easing.inOutQuad, onComplete=elsticBehaviour1})
        end
        
        
        
       transition.to(text, { time=450, x=525, y=630,transition=easing.inOutQuad,  onComplete=elsticBehaviour })

    
    
    
--====================================================================
	-- 1 2 3 moment
--====================================================================
  --three

	   local function next2()
           transition.to(three,{time=100, alpha=1, yScale=1.0, xScale=1.0, onComplete=goNext3})
       end

		local function goNext3(event)
		   if(event.phase == "began") then
		    audio.play(avc4)
			transition.to(three,{time=100, alpha=1, yScale=2.0, xScale=2.0, onComplete=next2})
		end
	end

  	   three:addEventListener("touch",goNext3)

	
--two	 
	   local function next1()
	        
            transition.to(two,{time=100, alpha=1, yScale=1.0, xScale=1.0, onComplete=goNext1})
        end

       local function goNext2(event)
          if(event.phase == "began") then
            audio.play(avc3)
            transition.to(two,{time=100, alpha=1, yScale=2.0, xScale=2.0, onComplete=next1})
         end
       end

      two:addEventListener("touch",goNext2)

	
--one	
	
	local function next()
       transition.to(one1,{time=100, alpha=1, yScale=1.0, xScale=1.0, onComplete=goNext1})
    end

    local function goNext1(event)
      if(event.phase == "began") then
       audio.play(avc2)
       transition.to(one1,{time=100, alpha=1, yScale=2.0, xScale=2.0, onComplete=next})
      end
    end

    one1:addEventListener("touch",goNext1)    	   

--====================================================================
	-- next screen after button Anim
--====================================================================

local check=0
 	   	
local function goNext(event)
	if(event.phase == "began") then
	   	if(timerid == nil) then
	   	check =1
	   	nextB:removeEventListener("touch", goNext)
        blurstar:removeEventListener("touch", blur)
        sun:removeEventListener("touch", SmilleAnimation)
        one1:removeEventListener("touch",goNext1)
        two:removeEventListener("touch",goNext2)
        three:removeEventListener("touch",goNext3)
        smiletimer =nil
        local function next(event)
       
       -- cleanup()
		director:changeScene("2ndScreen", "crossfade")
	   end
        
        
        local function elsticBehaviour2(event)
        	nextB.xReference =-90
        	transition.to( nextB, { time=70, xScale = 1,transition=easing.inOutQuad, onComplete=next})
        end
        local function elsticBehaviour1(event)
        	nextB.xReference = -90
        	transition.to( nextB, { time=70, xScale = .7,  transition=easing.inOutQuad, onComplete=elsticBehaviour2})
        end 
        
        local function elsticBehaviour(event)
        	nextB.xReference = -100
        	transition.to( nextB, { time=50, xScale = 1, transition=easing.inOutQuad, onComplete=elsticBehaviour1})
        end
      
        transition.to( nextB, { time=1000, x=900, onComplete=elsticBehaviour })
    end
  end
end

	
	nextB:addEventListener("touch", goNext)
	



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