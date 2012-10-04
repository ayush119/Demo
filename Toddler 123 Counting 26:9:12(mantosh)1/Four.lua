module(..., package.seeall)

new = function ( params )
--====================================================================--
-- IMPORT DIRECTOR CLASS
--====================================================================--
	
	local director = require("director")
--====================================================================--
-- Sounds
--====================================================================--	
      local avc1 = audio.loadStream("Single Cow-Sound.mp3")
      local oneSound=audio.loadStream("oneSound.wav")
      local twoSound=audio.loadStream("twoSound.wav")
      local threeSound=audio.loadStream("threeSound.wav")
      local fourSound=audio.loadStream("fourSound.wav") 
      
      
--====================================================================--
-- Creating display objects and getting handle
--====================================================================--
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	--local Four4 = display.newImage("Four.png",390,340)
	local Bull = display.newImage("Bull.png",860,30)
	local One=display.newImage("One1.png",800,550)
	One.alpha=0
    local Two=display.newImage("Two1.png",800,550)
    Two.alpha=0
	local Three=display.newImage("Three1.png",800,550)
	Three.alpha=0
	local Four=display.newImage("Four.png",800,550)
	Four.alpha=0
	local tomato  = display.newImage("tomato.png",220,280)
	local tomato1 = display.newImage("tomato.png",230,500)
	local tomato2 = display.newImage("tomato.png",520,500)
	local tomato3 = display.newImage("tomato.png",510,280)
	
	local tomato4 = display.newImage("tomato1.png",180,220)
	tomato4.alpha=0
	local tomato5 = display.newImage("tomato1.png",220,480)
	tomato5.alpha=0
	local tomato6 = display.newImage("tomato1.png",520,480)
	tomato6.alpha=0
	local tomato7 = display.newImage("tomato1.png",490,220)
	tomato7.alpha=0
	local nextB = display.newImage("next.png",830,650)
	local backB = display.newImage("back.png",30,650)
	
	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	localGroup:insert(One)
	localGroup:insert(Two)
	localGroup:insert(Three)
	localGroup:insert(Four)
	
	localGroup:insert(tomato)
	localGroup:insert(tomato1)
	localGroup:insert(tomato2)
	localGroup:insert(tomato3)
	localGroup:insert(tomato4)
	localGroup:insert(tomato5)
	localGroup:insert(tomato7)
	localGroup:insert(tomato6)
	
	localGroup:insert(nextB)
	localGroup:insert(backB)
	
	
	local function cleanup()
	    BG2:removeSelf()
		Tree:removeSelf()
		lif:removeSelf()
		One:removeSelf()
		Two:removeSelf()
		Three:removeSelf()
		Four:removeSelf()
		Bull:removeSelf()
		nextB:removeSelf()
		backB:removeSelf()
		--Four4:removeSelf()
		tomato:removeSelf()
		tomato1:removeSelf()
		tomato2:removeSelf()
		tomato3:removeSelf()
		tomato4:removeSelf()
		tomato5:removeSelf()
		tomato6:removeSelf()
		tomato7:removeSelf()
		localGroup:removeSelf()
	
	end
--====================================================================--
	-- Bull Coming Animation
--====================================================================--
	
	transition.to(Bull, { time=1000, x = 850, onComplite = nil})
	
	
	
	
--====================================================================--
	-- Watermelon Tuch Animation
--====================================================================--	
	
	
--====================================================================--
	-- Tree  lif movement on user touch..
--====================================================================--
 
	local function goTree(event)
	  if(event.phase == "began") then
		transition.to( lif, { time=1000,x=500 , y=500, onComplete=nil })
		timer.performWithDelay( 1000, nil, 1 )
		transition.to( lif, { time=8000, x=550 ,y=500, onComplete=nil })
		timer.performWithDelay( 1000, nil, 1 )
		transition.to( lif, { time=1000, x=580 ,y=500, onComplete=nil })
		timer.performWithDelay( 1000, nil, 1 )
		transition.to( lif, { time=1000, x=400 ,y=500, onComplete=nil })
		transition.to( lif, { time=800, x=400 ,y=500, onComplete=nil })
	 end
	end
	
	Tree:addEventListener("touch", goTree)
	
--====================================================================--
	-- Bull lif  movement on user touch..
--====================================================================--
 
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
		         	director:changeScene("Five", "crossfade")
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
		        	 director:changeScene("Three", "crossfade")
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
		
 --====================================================================--
	--COUNTING THE NUMBER IN TOMATO
--====================================================================--
  local  counter=0
   
        local function check()
              if(counter==1) then
                 audio.play(oneSound)
                 One.alpha=1
                 Two.alpha=0
                 Three.alpha=0
                 Four.alpha=0
              end
          
             if(counter==2)then
                audio.play(twoSound)
                One.alpha=0
                Two.alpha=1
                Three.alpha=0
                Four.alpha=0
             end
          
             if(counter==3)then
                audio.play(threeSound)
                One.alpha=0
                Two.alpha=0
                Three.alpha=1
                Four.alpha=0
             end
          
             if(counter==4)then
                audio.play(fourSound)
                One.alpha=0
                Two.alpha=0
                Three.alpha=0
                Four.alpha=1
             end
        end
         
        local function goNext4(event)
              if(event.phase == "began") then
                    tomato3:removeEventListener("touch",goNext4) 
   	                counter=counter+1
   	                check()
             	    tomato3.alpha=0
   	                tomato7.yScale=.5
   	                tomato7.xScale=.5
   	                transition.to(tomato7,{time=1000,alpha=1,xScale=1.2,yScale=1.2,onComplete=nil})
   	          end
        end
        tomato3:addEventListener("touch",goNext4) 	
         
        local function goNext3(event)
             if(event.phase == "began") then
                 tomato2:removeEventListener("touch",goNext3)
   	             counter=counter+1
   	             check()
          	     tomato2.alpha=0
   	             tomato6.yScale=.5
   	             tomato6.xScale=.5
   	             transition.to(tomato6,{time=1000,alpha=1,xScale=1.2,yScale=1.2,onComplete=nil})
   	         end
        end
        tomato2:addEventListener("touch",goNext3)
     
         
       local function goNext2(event)
           if(event.phase == "began") then
             tomato1:removeEventListener("touch",goNext2)
   	         counter=counter+1
   	         check()
      	     tomato1.alpha=0
   	         tomato5.yScale=.5
   	         tomato5.xScale=.5
   	         transition.to(tomato5,{time=1000,alpha=1,xScale=1.2,yScale=1.2,onComplete=nil})
   	      end
   	  end
   	  tomato1:addEventListener("touch",goNext2)   
   	
      local function goNext1(event)
   	      if(event.phase == "began") then
   	      	tomato:removeEventListener("touch", goNext1)
   	     	counter=counter+1
   	     	check()
         	tomato.alpha=0
   	     	tomato4.yScale=.5
   	     	tomato4.xScale=.5
   	     	transition.to(tomato4,{time=1000,alpha=1,xScale=1.2,yScale=1.2,onComplete=nil})
   	 	  end
     end
   	
     tomato:addEventListener("touch", goNext1)

 

   	
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