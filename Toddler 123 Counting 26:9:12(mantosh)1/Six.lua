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
     local  oneSound = audio.loadStream("oneSound.wav")
     local  twoSound = audio.loadStream("twoSound.wav") 
     local  threeSound = audio.loadStream("threeSound.wav")
     local  fourSound = audio.loadStream("fourSound.wav")
     local  fiveSound = audio.loadStream("fiveSound.wav")
     local  sixSound = audio.loadStream("sixSound.wav") 
      
      
--====================================================================--
-- Creating display objects and getting handle
--====================================================================--
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	local One = display.newImage("One1.png",40,510)
	      One.alpha =0
	local Two = display.newImage("Two1.png",40,510)
	      Two.alpha =0
	local Three = display.newImage("Three1.png",40,510)
	      Three.alpha =0
	local Four = display.newImage("Four.png",40,510)
	      Four.alpha =0
	local Five = display.newImage("Five.png",40,510)
	      Five.alpha =0
	local Six = display.newImage("Six.png",40,510)
	Six.alpha =0
	local Bull = display.newImage("Bull.png",890,30)
	
	local s = display.newImage("stobary.png",310,490)
	local s1 = display.newImage("stobaryfull.png",310,460)
	local st = display.newImage("stobary.png",150,320)
	local st1 = display.newImage("stobaryfull.png",130,290)
	local sto = display.newImage("stobary.png",2,110)
	local sto1 = display.newImage("stobaryfull.png",2,80)
	local stob = display.newImage("stobary.png",590,490)
	local stob1 = display.newImage("stobaryfull.png",590,475)
	local stoba = display.newImage("stobary.png",480,240)
	local stoba1 = display.newImage("stobaryfull.png",460,220)
	local stobary = display.newImage("stobary.png",340,50)
	local stobary1 = display.newImage("stobaryfull.png",320,40)
	
	
	
	s1.alpha=0
	st1.alpha=0
	sto1.alpha=0
	stob1.alpha=0
	stoba1.alpha=0
	stobary1.alpha=0
	
	local nextB = display.newImage("next.png",830,650)
	local backB = display.newImage("back.png",30,650)
	
	--local nextP = display.newImage("next.png",30,550)
	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	localGroup:insert(stob)
	localGroup:insert(stob1)
	localGroup:insert(stoba)
	localGroup:insert(stoba1)
	localGroup:insert(stobary)
	localGroup:insert(stobary1)
	
	localGroup:insert(s)
	localGroup:insert(s1)
	localGroup:insert(st)
	localGroup:insert(st1)
	localGroup:insert(sto)
	localGroup:insert(sto1)
	
	localGroup:insert(nextB)
	localGroup:insert(backB)
	--localGroup:insert(Watermelon1)
	localGroup:insert(Two)
	
	local function cleanup()
	
		BG2:removeSelf()
		Tree:removeSelf()
		lif:removeSelf()
		Bull:removeSelf()
		nextB:removeSelf()
		backB:removeSelf()
		
		Two:removeSelf()
		s:removeSelf()
		s1:removeSelf()
		st:removeSelf()
		st1:removeSelf()
		sto:removeSelf()
		sto1:removeSelf()
		stob:removeSelf()
		stob1:removeSelf()
		stoba:removeSelf()
		stoba1:removeSelf()
		stobary:removeSelf()
		stobary1:removeSelf()
		--Watermelon1:removeSelf()
		localGroup:removeSelf()
	
	end
--====================================================================--
	-- Bull Coming Animation
--====================================================================--
	
	transition.to(Bull, { time=1000, x = 950, onComplite = nil})
	
	
	
		
--====================================================================--
	-- Stobary Tuch Animation
--====================================================================--	
	   local counter = 0
      
	     local function check()
		            if(counter == 1) then
		                audio.play(oneSound)
		                One.alpha =1
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		            end
		            if(counter == 2) then
		                audio.play(twoSound)
		                One.alpha =0
		                Two.alpha =1
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		            end
		            if(counter == 3) then
		                audio.play(threeSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha=1
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		            end
		            if(counter == 4) then
		                audio.play(fourSound)
		                 One.alpha =0
		                Two.alpha =0
		                Three.alpha=0
		                Four.alpha =1
		                Five.alpha =0
		                Six.alpha =0
		            end
		            if(counter == 5) then
		                audio.play(fiveSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Five.alpha =1
		                Six.alpha =0
		            end
		            if(counter == 6) then
		                audio.play(sixSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =1
		            end
		    end
		            
		local function goTo6(event)
		   if(event.phase == "began") then
		      local function anim6()
		            counter = counter + 1
		            stobary.alpha =0
		            transition.to( stobary1,{ time=500, yScale =1.1, xScale =1.1, onComplete=nil })
		            stobary1.alpha = 1
		            check(counter)
		      end
		      anim6()
		      stobary:removeEventListener("touch", goTo6)
		  end
		end
        stobary:addEventListener("touch", goTo6)
		
		
		
		local function goTo5(event)
		   if(event.phase == "began") then
		      local function anim5()
		            counter = counter + 1
		            stoba.alpha =0
		            transition.to( stoba1,{ time=500, yScale =1.1, xScale =1.1, onComplete=nil })
		            stoba1.alpha = 1
		            check(counter)
		      end
		      anim5()
		      stoba:removeEventListener("touch", goTo5)
		    end
		end
		stoba:addEventListener("touch", goTo5)
		
		
		local function goTo4(event)
		  if(event.phase == "began") then
		      local function anim4()
		            counter = counter + 1
		            transition.to( stob1,{ time=500, yScale =1.1, xScale =1.1, onComplete=anim5})
		            stob.alpha =0
		            stob1.alpha = 1
		            check(counter)
		          
		      end
		      anim4()
		      stob:removeEventListener("touch", goTo4)
		    end
		end
		stob:addEventListener("touch", goTo4)
		
		
		
		
		local function goTo3(event)
		  if(event.phase == "began") then
		      local function anim3()
		            counter = counter + 1
		            transition.to( sto1,{ time=500, yScale =1.2, xScale =1.2, onComplete=anim4})
		            sto.alpha =0
		            sto1.alpha = 1
		            check(counter)
		      end
		      anim3()
		      sto:removeEventListener("touch", goTo3)
		    end
		end
		sto:addEventListener("touch", goTo3)
		
		
		
		local function goTo2(event)
		   if(event.phase == "began") then
		      local function anim2()
		            counter = counter + 1
		            transition.to( st1,{ time=500, yScale =1.2, xScale =1.2, onComplete=anim3 })
		            st.alpha =0
		            st1.alpha = 1
		            check(counter)
		      end
		      anim2()
		      st:removeEventListener("touch", goTo2)
		    end
		end
		st:addEventListener("touch", goTo2)
		
		
		
		local function goTo1(event)
		  if(event.phase == "began") then
		     local function anim1()
		        counter = counter + 1
		        transition.to( s1,{ time=500, yScale =1.2, xScale =1.2, onComplete=anim2 })
		        s.alpha =0
		        s1.alpha = 1
		        check(counter)
		     end
		     anim1()
		     s:removeEventListener("touch", goTo1)
		 end
		end
		
       
	--end
	
	s:addEventListener("touch", goTo1)




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
        	transition.to(Bull, { time=1000, x=885, y=225,  onComplete=elsticBehaviour })
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
       					-- cleanup()
						director:changeScene("Seven", "crossfade")
	   			end
       			local function elsticBehaviour2(event)
        				nextB.xReference =-90
        				transition.to( nextB, { time=300, xScale = 1,transition=easing.inOutQuad, onComplete=next})
       			end
       			local function elsticBehaviour1(event)
        				nextB.xReference = -90
        				transition.to( nextB, { time=600, xScale = .7,  transition=easing.inOutQuad, onComplete=elsticBehaviour2})
      	    	end 
        
       			local function elsticBehaviour(event)
        				nextB.xReference = -100
        				transition.to( nextB, { time=300, xScale = 1, transition=easing.inOutQuad, onComplete=elsticBehaviour1})
       			end
      
       			transition.to( nextB, { time=300, onComplete=elsticBehaviour })
	       end
	 end

	
	nextB:addEventListener("touch", goNext)	

--========================================================================================
	-- Goto  Back 
--========================================================================================
	
	
		 	   	
	local function goBack(event)
	    if(event.phase == "began") then
	   		backB:removeEventListener("touch", goBack)
        	local function next(event)
                  cleanup()
		          director:changeScene("Five", "crossfade")
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
	-- strawberry moment1
--====================================================================--
 	local function goNext6(event)
 	  if(event.phase == "began") then
     	s:removeEventListener("touch",goNext6)
     	s.alpha=0
     	s1.yScale=0
     	s1.xScale=0
     	transition.to( s1, { time=300, alpha=1,yScale=1.2,xScale = 1.2, onComplete=nil})
      end
    end
	s:addEventListener("touch",goNext6)
	
	
--====================================================================--
	-- strawberry moment2
--====================================================================--
 	local function goNext5(event)
 	  if(event.phase == "began") then
 	    st:removeEventListener("touch",goNext5)
     	st.alpha=0
     	st1.yScale=.2
     	st1.xScale=.2
     	transition.to( st1, { time=300, alpha=1,yScale=1.2,xScale = 1.2, onComplete=nil})
      end
    end
	st:addEventListener("touch",goNext5)
	
	
--====================================================================--
	-- strawberry moment3
--====================================================================--
 	local function goNext4(event)
 	 if(event.phase == "began") then
 	    sto:removeEventListener("touch",goNext4)
     	sto.alpha=0
     	sto1.yScale=.2
     	sto1.xScale=.2
     	transition.to( sto1, { time=300, alpha=1,yScale=1.2,xScale = 1.2, onComplete=nil})
      end
    end
	sto:addEventListener("touch",goNext4)
	
--====================================================================--
	-- strawberry moment4
--====================================================================--
 	local function goNext3(event)
 	 if(event.phase == "began") then
 	    stob:removeEventListener("touch",goNext3)
     	stob.alpha=0
     	stob1.yScale=.2
     	stob1.xScale=.2
     	transition.to( stob1, { time=300, alpha=1,yScale=1.2,xScale = 1.2, onComplete=nil})
     end
    end
	stob:addEventListener("touch",goNext3)
	
	
--====================================================================--
	-- strawberry moment5
--====================================================================--
 	local function goNext2(event)
 	  if(event.phase == "began") then
 	    stoba:removeEventListener("touch",goNext2)
     	stoba.alpha=0
     	stoba1.yScale=.2
     	stoba1.xScale=.2
     	transition.to( stoba1, { time=300, alpha=1,yScale=1.2,xScale = 1.2, onComplete=nil})
      end
    end
	stoba:addEventListener("touch",goNext2)
	
	
		
--====================================================================--
	-- strawberry moment6
--====================================================================--
 	local function goNext1(event)
 	  if(event.phase == "began") then
 	    stobary:removeEventListener("touch",goNext1)
     	stobary.alpha=0
     	stobary1.yScale=.2
    	stobary1.xScale=.2
     	transition.to( stobary1, { time=300, alpha=1,yScale=1.2,xScale = 1.2, onComplete=nil})
      end
    end
	stobary:addEventListener("touch",goNext1)
	

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