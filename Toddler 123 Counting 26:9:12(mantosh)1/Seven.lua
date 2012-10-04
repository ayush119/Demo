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
     local SevenSound = audio.loadStream("sevenSound.wav")
      
      
--====================================================================--
-- Creating display objects and getting handle
--====================================================================--
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	--local Two = display.newImage("Seven.png",520,210)
	local Bull = display.newImage("Bull.png",860,30)
	
	local One = display.newImage("One1.png",510,140)
	One.alpha=0
	local Two = display.newImage("Two1.png",510,140)
	Two.alpha=0
	local Three = display.newImage("Three1.png",510,140)
	Three.alpha=0
	local Four = display.newImage("Four.png",510,140)
	Four.alpha=0
	local Five = display.newImage("Five.png",510,140)
	Five.alpha=0
    local Six = display.newImage("Six.png",510,140)
    Six.alpha=0
    local Seven = display.newImage("Seven.png",510,140)
    Seven.alpha=0
	
	
	--local Watermelon1 = display.newImage("Watermelon1.png",140,290)
	local onion1 = display.newImage("Onion.png",-10,340)
	local onionhand1 = display.newImage("Onion_C.png",20,330)
	onionhand1.alpha = 0
	
	local onion2 = display.newImage("Onion.png",210,340)
	local onionhand2 = display.newImage("Onion_C.png",240,335)
	onionhand2.alpha = 0
	
	
	local onion3 = display.newImage("Onion.png",450,345)
	local onionhand3 = display.newImage("Onion_C.png",480,335)
	onionhand3.alpha = 0
	
	local onion4 = display.newImage("Onion.png",-100,540)
	local onionhand4 = display.newImage("Onion_C.png",-70,530)
	onionhand4.alpha = 0
	
	local onion5 = display.newImage("Onion.png",120,530)
	local onionhand5 = display.newImage("Onion_C.png",160,520)
	onionhand5.alpha = 0
	
	local onion6 = display.newImage("Onion.png",370,530)
    local onionhand6 = display.newImage("Onion_C.png",410,520)
	onionhand6.alpha = 0
	
	local onion7 = display.newImage("Onion.png",590,530)
	local onionhand7 = display.newImage("Onion_C.png",615,520)
	onionhand7.alpha = 0
	
	local nextB = display.newImage("next.png",830,650)
	local backB = display.newImage("back.png",20,650)
	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	localGroup:insert(onion1)
	localGroup:insert(onionhand1)
	localGroup:insert(onionhand2)
	localGroup:insert(onionhand3)
	localGroup:insert(onionhand4)
	localGroup:insert(onionhand5)
	localGroup:insert(onionhand6)
	localGroup:insert(onionhand7)
	localGroup:insert(onion2)
	localGroup:insert(onion3)
	localGroup:insert(onion4)
    localGroup:insert(onion5)
	localGroup:insert(onion6)
	localGroup:insert(onion7)
	
	localGroup:insert(backB)
	localGroup:insert(nextB)
	
	--localGroup:insert(Watermelon1)
	localGroup:insert(Two)
	
	local function cleanup()
	
		BG2:removeSelf()
		Tree:removeSelf()
		lif:removeSelf()
		Bull:removeSelf()
		nextB:removeSelf()
		backB:removeSelf()
		--Two:removeSelf()
		onion1:removeSelf()
		onionhand1:removeSelf()
		onion2:removeSelf()
		onionhand2:removeSelf()
		onion3:removeSelf()
		onionhand3:removeSelf()
		onion4:removeSelf()
		onionhand4:removeSelf()
		onion5:removeSelf()
		onionhand5:removeSelf()
		onion6:removeSelf()
		onionhand6:removeSelf()
		onion7:removeSelf()
		onionhand7:removeSelf()
		--Watermelon1:removeSelf()
		localGroup:removeSelf()
	
	end
--====================================================================--
	-- Bull Coming Animation
--====================================================================--
	
	transition.to(Bull, { time=1000, x = 850, onComplite = nil})
	
	
	
--====================================================================--
	-- onionTouch Animation
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
		                Seven.alpha =0
		                
		                end
		                
		                if(counter == 2) then
		                 audio.play(twoSound)
		                One.alpha =0
		                Two.alpha =1
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		               
		                end
		                
		                if(counter == 3) then
		                 audio.play(threeSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha=1
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		               
		                end
		                
		                if(counter == 4) then
		                audio.play(fourSound)
		                 One.alpha =0
		                Two.alpha =0
		                Three.alpha=0
		                Four.alpha =1
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		               
		                end
		                
		                if(counter == 5) then
		                audio.play(fiveSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Five.alpha =1
		                Six.alpha =0
		                Seven.alpha =0
		               
		                end
		                
		                if(counter == 6) then
		                audio.play(sixSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =1
		                Seven.alpha =0
		               
		                end
		                
		                if(counter == 7) then
		                audio.play(SevenSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =1
		               
		                end
		                
		            end
		            
		
		local function goTo7(event)
		      if(event.phase == "began") then
		               local function anim7()
		                     	counter = counter + 1
		                 	 	onion7.alpha =0
		                		transition.to(onionhand7,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                		onionhand7.alpha = 1
		                		check(counter)
		       			end
		       anim7()
		       onion7:removeEventListener("touch", goTo7)
			end
		end
		
		local function goTo6(event)
				if(event.phase == "began") then
		      		local function anim6()
		                counter = counter + 1
		                onion6.alpha =0
		                transition.to(onionhand6,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
   	                    onionhand6.alpha = 1
		                check(counter)
		     		 end
		      	anim6()
		      	onion6:removeEventListener("touch", goTo6)
		    end
		end	
		
		local function goTo5(event)
		  		if(event.phase == "began") then
		      			local function anim5()
		                		counter = counter + 1
		                		onion5.alpha =0
		                		transition.to(onionhand5,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil})
		                		onionhand5.alpha = 1
		                		check(counter)
		      			end
		      	anim5()
		      	onion5:removeEventListener("touch", goTo5)
		    end
		end
		
		
		local function goTo4(event)
		  		if(event.phase == "began") then
		      			local function anim4()
		                		counter = counter + 1
		                		onion4.alpha =0
		                		transition.to( onionhand4,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                		onionhand4.alpha = 1
		                		check(counter)
	      				end
		      anim4()
		      onion4:removeEventListener("touch", goTo4)
		    end
		end
		
		
		local function goTo3(event)
				if(event.phase == "began") then
		      			local function anim3()
		                		counter = counter + 1
		                		onion3.alpha =0
		                		transition.to(onionhand3,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                		onionhand3.alpha = 1
		                		check(counter)
		      			end
		      anim3()
		      onion3:removeEventListener("touch", goTo3)
		    end
		end
		
		local function goTo2(event)
				if(event.phase == "began") then
		      			local function anim2()
		             			counter = counter + 1
		             			onion2.alpha =0
		             			transition.to( onionhand2,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
 		             			onionhand2.alpha = 1
		             			check(counter)
		      			end
		      	anim2()
		      	onion2:removeEventListener("touch", goTo2)
		      end
		end
		
		local function goTo1(event)
		     	if(event.phase == "began") then
				     local function anim1()
		          	 		counter = counter + 1
		           			onion1.alpha =0
		           			transition.to( onionhand1,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		           			onionhand1.alpha = 1
		           			check(counter)
		     			end
		     	anim1()
		     	onion1:removeEventListener("touch", goTo1)
		     end
		end
		
       

	
	 onion1:addEventListener("touch", goTo1)
	 onion2:addEventListener("touch", goTo2)
	 onion3:addEventListener("touch", goTo3)
	 onion4:addEventListener("touch", goTo4)
	 onion5:addEventListener("touch", goTo5)
	 onion6:addEventListener("touch", goTo6)
	 onion7:addEventListener("touch", goTo7)
	
	
	
	
	

--====================================================================--
	-- Tree  lif movement on user touch..
--====================================================================--
 
	local function goTree(event)
		if(event.phase == "began") then
		    Tree:removeEventListener("touch", goTree)
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
        		transition.to(Bull, { time=1000, x=825, y=230,  onComplete=nil })

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
						 		director:changeScene("Eight", "crossfade")
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
--====================================================================
	-- Goto back 
--====================================================================
	 	   	
		local function goBack(event)
					if(event.phase == "began") then
	  					 backB:removeEventListener("touch", goBack)
	  					 local function next(event)
				        		 -- cleanup()
							 	 director:changeScene("Six", "crossfade")
	   					 end
        				 local function elsticBehaviour2(event)
        								backB.xReference =-90
        								transition.to(backB, { time=300, xScale = 1,transition=easing.inOutQuad, onComplete=next})
        				 end
        				 local function elsticBehaviour1(event)
        								backB.xReference = -90
        								transition.to( backB, { time=600, xScale = .7,  transition=easing.inOutQuad, onComplete=elsticBehaviour2})
        				 end 
        				 local function elsticBehaviour(event)
        								backB.xReference = -100
        								transition.to( backB, { time=300, xScale = 1, transition=easing.inOutQuad, onComplete=elsticBehaviour1})
        				 end
      
        				 transition.to(backB, { time=300, onComplete=elsticBehaviour })
	
					 end
		 end
		backB:addEventListener("touch", goBack)		

   	
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