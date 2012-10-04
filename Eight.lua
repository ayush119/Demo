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
     local  oneSound = audio.loadStream("oneSound.wav")
     local  twoSound = audio.loadStream("twoSound.wav") 
     local  threeSound = audio.loadStream("threeSound.wav")
     local  fourSound = audio.loadStream("fourSound.wav")
     local  fiveSound = audio.loadStream("fiveSound.wav")
     local  sixSound = audio.loadStream("sixSound.wav")
     local  sevenSound = audio.loadStream("sevenSound.wav") 
     local  eightSound = audio.loadStream("eightSound.wav") 
    
--====================================================================
-- Creating display objects and getting handle
--====================================================================
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	local One = display.newImage("One1.png",480,110)
	One.alpha=0
	local Two = display.newImage("Two1.png",480,110)
	Two.alpha=0
	local Three = display.newImage("Three1.png",480,110)
	Three.alpha=0
	local Four = display.newImage("Four.png",480,110)
	Four.alpha=0
	local Five = display.newImage("Five.png",480,110)
	Five.alpha=0
    local Six = display.newImage("Six.png",480,110)
    Six.alpha=0
    local Seven = display.newImage("Seven.png",480,110)
    Seven.alpha=0
	local Eight = display.newImage("Eight.png",480,110)
	Eight.alpha=0
	local Bull = display.newImage("Bull.png",890,0)

--====================================================================
-- Creating display objects for pea
--====================================================================
	local pea = display.newImage("Pea.png",200,250)
	pea:scale(.9,.9)
	local pea1 = display.newImage("Pea.png",70,440)
	pea1:scale(.9,.9)
	local pea2 = display.newImage("Pea.png",530,440)
	pea2:scale(.9,.9)
	local pea3 = display.newImage("Pea.png",670,260)
	pea3:scale(.9,.9)
	local pea4 = display.newImage("Pea.png",820,440)
	pea4:scale(.9,.9)
	local pea5 = display.newImage("Pea.png",190,600)
	pea5:scale(.9,.9)
	local pea6 = display.newImage("Pea.png",330,440)
	pea6:scale(.9,.9)
	local pea7 = display.newImage("Pea.png",680,600)
	pea7:scale(.9,.9)
	
	
	local peahand = display.newImage("PeaHand.png",200,250)
	peahand.yScale =.9
	peahand.xScale =.9
	peahand.alpha =0
	
	local peahand1 = display.newImage("PeaHand.png",70,440)
	peahand1.yScale =.9
	peahand1.xScale =.9
	peahand1.alpha =0
	
	local peahand2 = display.newImage("PeaHand.png",530,440)
	peahand2.yScale =.9
	peahand2.xScale =.9
	peahand2.alpha =0
	
	local peahand3 = display.newImage("PeaHand.png",670,260)
	peahand3.yScale =.9
	peahand3.xScale =.9
	peahand3.alpha =0
	
	local peahand4 = display.newImage("PeaHand.png",820,440)
	peahand4.yScale =.9
	peahand4.xScale =.9
	peahand4.alpha =0
	
	local peahand5 = display.newImage("PeaHand.png",190,600)
	peahand5.yScale =.9
	peahand5.xScale =.9
	peahand5.alpha =0
	
	local peahand6 = display.newImage("PeaHand.png",330,440)
	peahand6.yScale =.9
	peahand6.xScale =.9
	peahand6.alpha =0
	
	local peahand7 = display.newImage("PeaHand.png",680,600)
	peahand7.yScale =.9
	peahand7.xScale =.9
	peahand7.alpha =0
	
	local nextB = display.newImage("next.png",850,650)
	local backB = display.newImage("back.png",30,650)
	
--====================================================================
-- insert object in the Group
--====================================================================

	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	
	localGroup:insert(pea)
	localGroup:insert(pea1)
	localGroup:insert(pea2)
	localGroup:insert(pea3)
	localGroup:insert(pea4)
	localGroup:insert(pea5)
	localGroup:insert(pea6)
	localGroup:insert(pea7)
	localGroup:insert(peahand)
	localGroup:insert(peahand1)
	localGroup:insert(peahand2)
	localGroup:insert(peahand3)
	localGroup:insert(peahand4)
	localGroup:insert(peahand5)
	localGroup:insert(peahand6)
	localGroup:insert(peahand7)
	localGroup:insert(nextB)
	localGroup:insert(backB)
	localGroup:insert(Eight)
	
--====================================================================
-- Memory ClinUp 
--====================================================================
	
	local function cleanup()
	
		BG2:removeSelf()
		Tree:removeSelf()
		lif:removeSelf()
		Bull:removeSelf()
		nextB:removeSelf()
		backB:removeSelf()
		Eight:removeSelf()
		
		pea:removeSelf()
		pea1:removeSelf()
		pea2:removeSelf()
		pea3:removeSelf()
		pea4:removeSelf()
		pea5:removeSelf()
		pea6:removeSelf()
		pea7:removeSelf()
		peahand:removeSelf()
		peahand1:removeSelf()
		peahand2:removeSelf()
		peahand3:removeSelf()
		peahand4:removeSelf()
		peahand5:removeSelf()
		peahand6:removeSelf()
		peahand7:removeSelf()
		
		localGroup:removeSelf()
	
	end
--====================================================================
	-- Bull Coming Animation
--====================================================================
	
	transition.to(Bull, { time=1000, x = 900, onComplite = nil})
	
--====================================================================
	-- Object and Counting animation
--====================================================================	

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
		                Eight.alpha =0
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
		                Eight.alpha =0
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
		                Eight.alpha =0
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
		                Eight.alpha =0
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
		                Eight.alpha =0
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
		                Eight.alpha =0
		                end
		                
		                if(counter == 7) then
		                audio.play(sevenSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =1
		                Eight.alpha =0
		                end
		                
		                if(counter == 8) then
		                audio.play(eightSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =1
		                end
		            end
		            
		
		
		local function goTo8(event)
		      if(event.phase == "began") then
		      			local function anim8()
		            			counter = counter + 1
		                		pea7.alpha =0
		                		transition.to( peahand7,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                		peahand7.alpha = 1
		                		check(counter)
		      			end
		      			anim8()
		      			pea7:removeEventListener("touch", goTo8)
		      end
		 end
		local function goTo7(event)
				if(event.phase == "began") then
		      			local function anim7()
		            		counter = counter + 1
		                	pea6.alpha =0
		                	transition.to( peahand6,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                	peahand6.alpha = 1
		                	check(counter)
		      			end
		      			anim7()
		      			pea6:removeEventListener("touch", goTo7)
		      	end
		end
		local function goTo6(event)
				if(event.phase == "began") then
		      			local function anim6()
		            			counter = counter + 1
		             			pea5.alpha =0
		                		transition.to( peahand5,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil})
		                		peahand5.alpha = 1
		                		check(counter)
		      			end
		      			anim6()
		      			pea5:removeEventListener("touch", goTo6)
		      	end
		end
		
		
		local function goTo5(event)
				if(event.phase == "began") then
		      		local function anim5()
		            		counter = counter + 1
		             		pea4.alpha =0
		                	transition.to( peahand4,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil})
		                	peahand4.alpha = 1
		                	check(counter)
		      		end
		      		anim5()
		      		pea4:removeEventListener("touch", goTo5)
		      end
		end
		
		local function goTo4(event)
				if(event.phase == "began") then
		      			local function anim4()
		            			counter = counter + 1
		              			pea3.alpha =0
		                		transition.to( peahand3,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                		peahand3.alpha = 1
		                		check(counter)
		      			end
		      			anim4()
		      			pea3:removeEventListener("touch", goTo4)
				end
		end
		
		
		local function goTo3(event)
				if(event.phase == "began") then
		      			local function anim3()
		               			counter = counter + 1
		               			pea2.alpha =0
		                		transition.to( peahand2,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                		peahand2.alpha = 1
		                		check(counter)
		      			end
		      		anim3()
		      		pea2:removeEventListener("touch", goTo3)
				end
		end
		
		local function goTo2(event)
				if(event.phase == "began") then
		      			local function anim2()
		           				counter = counter + 1
		            			pea1.alpha =0
		        				transition.to( peahand1,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		        				peahand1.alpha = 1
		        				check(counter)
		      			end
		      			anim2()
		      			pea1:removeEventListener("touch", goTo2)
				end
		end
		
		local function goTo1(event)
				if(event.phase == "began") then
		     			local function anim1()
		        				counter = counter + 1
		       					pea.alpha =0
		        				transition.to( peahand,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		        				peahand.alpha = 1
		        				check(counter)
		     			end
		     			anim1()
		     			pea:removeEventListener("touch", goTo1)
				end
		end
		
	 pea:addEventListener("touch", goTo1)
	 pea1:addEventListener("touch", goTo2)
	 pea2:addEventListener("touch", goTo3)
	 pea3:addEventListener("touch", goTo4)
	 pea4:addEventListener("touch", goTo5)
	 pea5:addEventListener("touch", goTo6)
	 pea6:addEventListener("touch", goTo7)
	 pea7:addEventListener("touch", goTo8)


	
--====================================================================
	-- Tree  lif movement on user touch..
--====================================================================
 
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
	
	--Tree:addEventListener("touch", goTree)
	
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
--========================================================================================
	-- Goto Next 
--========================================================================================

		 	   	
local function goNext(event)
    if(event.phase == "began") then
	   	nextB:removeEventListener("touch", goNext)
        local function next(event)
                 cleanup()
		         director:changeScene("Nine", "crossfade")
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
	   		backB:removeEventListener("touch", goBack)
        	local function next(event)
                 	cleanup()
		         	director:changeScene("Seven", "crossfade")
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