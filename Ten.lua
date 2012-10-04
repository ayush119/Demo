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
      local fiveSound=audio.loadStream("fiveSound.wav")
      local sixSound=audio.loadStream("sixSound.wav")
      local sevenSound=audio.loadStream("sevenSound.wav")
      local eightSound=audio.loadStream("eightSound.wav")
      local nineSound=audio.loadStream("nineSound.wav")
      local tenSound=audio.loadStream("tenSound.wav")
      
--====================================================================--
-- Creating display objects and getting handle
--====================================================================--
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	
	local Bull = display.newImage("Bull.png",860,30)
	
	local One = display.newImage("One1.png",720,510)
	One.alpha =0
	local Two = display.newImage("Two1.png",760,370)
	Two.alpha=0
	local Three = display.newImage("Three1.png",760,370)
	Three.alpha=0
	local Four = display.newImage("Four.png",760,370)
	Four.alpha=0
	local Five = display.newImage("Five.png",760,370)
	Five.alpha=0
    local Six = display.newImage("Six.png",760,370)
    Six.alpha=0
    local Seven = display.newImage("Seven.png",760,370)
    Seven.alpha=0
	local Eight = display.newImage("Eight.png",760,370)
	Eight.alpha=0
	local Nine = display.newImage("Nine.png",760,370)
	Nine.alpha=0
	local Ten = display.newImage("Ten.png",760,370)
	Ten.alpha=0
	
	local cucumber = display.newImage("cucumber.png",30,500)
	local cucumber1 = display.newImage("cucumber.png",160,380)
	local cucumber2 = display.newImage("cucumber.png",280,225)
	local cucumber3 = display.newImage("cucumber.png",430,120)
	local cucumber4 = display.newImage("cucumber.png",290,490)
	local cucumber5 = display.newImage("cucumber.png",410,370)
	local cucumber6 = display.newImage("cucumber.png",550,250)
	local cucumber7 = display.newImage("cucumber.png",530,500)
	local cucumber8 = display.newImage("cucumber.png",670,400)
	local cucumber9 = display.newImage("cucumber.png",800,500)
	local cucumber10 = display.newImage("cucumber1.png",1,405)
	cucumber10.alpha=0
	local cucumber11 = display.newImage("cucumber1.png",120,250)
	cucumber11.alpha=0
	local cucumber12 = display.newImage("cucumber1.png",250,140)
	cucumber12.alpha=0
	local cucumber13 = display.newImage("cucumber1.png",400,30)
	cucumber13.alpha=0
	local cucumber14 = display.newImage("cucumber1.png",240,420)
	cucumber14.alpha=0
	local cucumber15 = display.newImage("cucumber1.png",390,300)
	cucumber15.alpha=0
	local cucumber16 = display.newImage("cucumber1.png",530,220)
	cucumber16.alpha=0
	local cucumber17 = display.newImage("cucumber1.png",510,430)
	cucumber17.alpha=0
	local cucumber18 = display.newImage("cucumber1.png",650,400)
	cucumber18.alpha=0
	local cucumber19 = display.newImage("cucumber1.png",780,450)
	cucumber19.alpha=0
	local nextB = display.newImage("next.png",840,650)
	local backB = display.newImage("back.png",30,650)
	
	
	
	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	localGroup:insert(One)
	localGroup:insert(Two)
	localGroup:insert(Three)
	localGroup:insert(Four)
	localGroup:insert(Five)
	localGroup:insert(Six)
	localGroup:insert(Seven)
	localGroup:insert(Eight )
	localGroup:insert(Nine)
	localGroup:insert(Ten)
	
	
	localGroup:insert(cucumber)
	localGroup:insert(cucumber1)
	localGroup:insert(cucumber2)
	localGroup:insert(cucumber3)
	localGroup:insert(cucumber4)
	localGroup:insert(cucumber5)
	localGroup:insert(cucumber6)
	localGroup:insert(cucumber7)
	localGroup:insert(cucumber8)
	localGroup:insert(cucumber9)
	localGroup:insert(cucumber10)
	localGroup:insert(cucumber11)
	localGroup:insert(cucumber12)
	localGroup:insert(cucumber13)
	localGroup:insert(cucumber14)
	localGroup:insert(cucumber15)
	localGroup:insert(cucumber16)
	localGroup:insert(cucumber17)
	localGroup:insert(cucumber18)
	localGroup:insert(cucumber19)
	
	localGroup:insert(nextB)
	localGroup:insert(backB)
	--localGroup:insert(Two)
	
	local function cleanup()
	
		BG2:removeSelf()
		Tree:removeSelf()
		lif:removeSelf()
		Bull:removeSelf()
		nextB:removeSelf()
		backB:removeSelf()
		--Two:removeSelf()
		One:removeSelf()
		Two:removeSelf()
		Three:removeSelf()
		Four:removeSelf()
		Five:removeSelf()
		Six:removeSelf()
		Seven:removeSelf()
		Eight:removeSelf()
		Nine:removeSelf()
		Ten:removeSelf()
		cucumber:removeSelf()
		cucumber1:removeSelf()
		cucumber2:removeSelf()
		cucumber3:removeSelf()
		cucumber4:removeSelf()
		cucumber5:removeSelf()
		cucumber6:removeSelf()
		cucumber7:removeSelf()
		cucumber8:removeSelf()
		cucumber9:removeSelf()
		cucumber10:removeSelf()
		cucumber11:removeSelf()
		cucumber12:removeSelf()
		cucumber13:removeSelf()
		cucumber14:removeSelf()
		cucumber15:removeSelf()
		cucumber16:removeSelf()
		cucumber17:removeSelf()
		cucumber18:removeSelf()
		cucumber19:removeSelf()
		
		
		localGroup:removeSelf()
	
	end
--====================================================================--
	-- Bull Coming Animation
--====================================================================--
	
	transition.to(Bull, { time=1000, x = 850, onComplite = nil})
	
	
	
	
--====================================================================--
	-- Elephant Animation
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
--========================================================================================
	-- Goto Next 
--========================================================================================

		 	   	
	local function goNext(event)
	   if(event.phase == "began") then
	   		nextB:removeEventListener("touch", goNext)
        	local function next(event)
                 	cleanup()
		         	director:changeScene("OptionMenu", "crossfade")
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
		         	director:changeScene("Nine", "crossfade")
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
	--  COUNTING THE NUMBER
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
		                Eight.alpha =0
		                Nine.alpha=0
		                Ten.alpha=0
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
		                Nine.alpha=0
		                Ten.alpha =0
		                end
		                
		                if(counter == 3) then
		                audio.play(threeSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha =1
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =0
		                Nine.alpha=0
		                Ten.alpha =0
		                end
		                
		                if(counter == 4) then
		                 audio.play(fourSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =1
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =0
		                Nine.alpha=0
		                Ten.alpha =0
		                end
		                
		                if(counter == 5) then
		                audio.play(fiveSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =1
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =0
		                Nine.alpha=0
		                Ten.alpha =0
		                end
		                
		                if(counter == 6) then
		                audio.play(sixSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =1
		                Seven.alpha =0
		                Eight.alpha =0
		                Nine.alpha=0
		                Ten.alpha =0
		                end
		                
		                if(counter == 7) then
		                audio.play(sevenSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =1
		                Eight.alpha =0
		                Nine.alpha=0
		                Ten.alpha =0
		                end
		                
		                if(counter == 8) then
		                audio.play(eightSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =1
		                Nine.alpha=0
		                Ten.alpha =0
		                end
		                if(counter == 9) then
		                audio.play(nineSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =0
		                Nine.alpha=1
		                Ten.alpha =0
		                end
		                
		                
		                if(counter == 10) then
		                audio.play(tenSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =0
		                Nine.alpha=0
		                Ten.alpha=1
		                end
		                
		            end
		            
		
		local function goTo10(event)
	      		if(event.phase == "began") then
		      		local function anim10()
		            		counter = counter + 1
		                 	cucumber9.alpha =0
		                	transition.to(cucumber19,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		                	cucumber19.alpha = 1
		                	check(counter)
		      		end
		      		anim10()
		       		cucumber9:removeEventListener("touch", goTo10)
		       	end
		 end
	
	
		local function goTo9(event)
				if(event.phase == "began") then
		      		local function anim9()
		            		counter = counter + 1
		                 	cucumber8.alpha =0
		                	transition.to(cucumber18,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		                	cucumber18.alpha = 1
		                	check(counter)
		      		end
		      		anim9()
		       		cucumber8:removeEventListener("touch", goTo9)
		    end
		 end
		 
		 
		local function goTo8(event)
				if(event.phase == "began") then
		      		local function anim8()
		            		counter = counter + 1
		                 	cucumber7.alpha =0
		                	transition.to(cucumber17,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		                	cucumber17.alpha = 1
		                	check(counter)
		      		end
		      		anim8()
		       		cucumber7:removeEventListener("touch", goTo8)
		       end
		 end
		 
		 
		local function goTo7(event)
				if(event.phase == "began") then
		      			local function anim7()
		            			counter = counter + 1
		                		cucumber6.alpha =0
		                		transition.to(cucumber16,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		                		cucumber16.alpha = 1
		                		check(counter)
		      				end
		      			anim7()
		       			cucumber6:removeEventListener("touch", goTo7)
		       	end
    	end
		
		
		local function goTo6(event)
			if(event.phase == "began") then
		      		local function anim6()
		            		counter = counter + 1
		            		cucumber5.alpha =0
		                	transition.to(cucumber15,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		                 	cucumber15.alpha = 1
		                	check(counter)
		      		end
		      		anim6()
		      		cucumber5:removeEventListener("touch", goTo6)
		  	end
		end
		
		local function goTo5(event)
			if(event.phase == "began") then
		     		 local function anim5()
		           			 counter = counter + 1
		            		 cucumber4.alpha =0
		                	 transition.to( cucumber14,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil})
		                	 cucumber14.alpha = 1
		                     check(counter)
		             end
		             anim5()
		             cucumber4:removeEventListener("touch", goTo5)
		    end
		end
		
		local function goTo4(event)
			if(event.phase == "began") then
		      		local function anim4()
		            	counter = counter + 1
		             	cucumber3.alpha =0
		                transition.to( cucumber13,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		                cucumber13.alpha = 1
		                check(counter)
		      		end
		      anim4()
		      cucumber3:removeEventListener("touch", goTo4)
		    end  
		end
		
		
		local function goTo3(event)
				if(event.phase == "began") then
		      		local function anim3()
		              		counter = counter + 1
		               		cucumber2.alpha =0
		                	transition.to( cucumber12,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		                	cucumber12.alpha = 1
		                	check(counter)
		      		end
		      anim3()
		      cucumber2:removeEventListener("touch", goTo3)
		    end
		end
		
		local function goTo2(event)
				if(event.phase == "began") then
		      		local function anim2()
		           		counter = counter + 1
		            	cucumber1.alpha =0
		        		transition.to( cucumber11,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		        		cucumber11.alpha = 1
		        		check(counter)
		      		end
		      anim2()
		      cucumber1:removeEventListener("touch", goTo2)
		    end
		end
		
		local function goTo1(event)
			if(event.phase == "began") then
		     	local function anim1()
		        		counter = counter + 1
		        		cucumber.alpha =0
		        		transition.to( cucumber10,{ time=100, yScale =1.2, xScale =1.2, onComplete=nil })
		        		cucumber10.alpha = 1
		        		check(counter)
		     	end
		     anim1()
		     cucumber:removeEventListener("touch", goTo1)
		  end  
		end
		
       

	
	 cucumber:addEventListener("touch", goTo1) 
	 cucumber1:addEventListener("touch", goTo2)
	 cucumber2:addEventListener("touch", goTo3)
	 cucumber3:addEventListener("touch", goTo4)
	 cucumber4:addEventListener("touch", goTo5)
	 cucumber5:addEventListener("touch", goTo6)
	 cucumber6:addEventListener("touch", goTo7)
	 cucumber7:addEventListener("touch", goTo8)
	 cucumber8:addEventListener("touch", goTo9)
	 cucumber9:addEventListener("touch", goTo10)
	 
   	
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