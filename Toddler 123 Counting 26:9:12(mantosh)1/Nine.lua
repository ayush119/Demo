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
     local  nineSound = audio.loadStream("nineSound.wav") 
      
      
--====================================================================
-- Creating display objects and getting handle
--====================================================================
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	--local Two = display.newImage("Nine.png",720,510)
	local Bull = display.newImage("Bull.png",940,15)
	--local Watermelon1 = display.newImage("Watermelon1.png",140,290)
	--local apple = display.newImage("apple.png",150,250)
	
	
	
	
	local One = display.newImage("One1.png",760,370)
	One.alpha=0
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
	
	local Brinjal = display.newImage("Brinjal.png",10,520) 
	local BrinjalHand = display.newImage("BrinjalHand.png",-100,480)
	BrinjalHand.alpha = 0
	
	local Brinjal1 = display.newImage("Brinjal.png",180,360)
	local BrinjalHand1 = display.newImage("BrinjalHand.png",70,330)
	BrinjalHand1.alpha = 0
	
	local Brinjal2 = display.newImage("Brinjal.png",310,220)
	local BrinjalHand2 = display.newImage("BrinjalHand.png",210,190)
	BrinjalHand2.alpha = 0
	
	local Brinjal3 = display.newImage("Brinjal.png",220,570)
	local BrinjalHand3 = display.newImage("BrinjalHand.png",120,530)
	BrinjalHand3.alpha=0
	
	local Brinjal4 = display.newImage("Brinjal.png",350,410)
	local BrinjalHand4 = display.newImage("BrinjalHand.png",250,370)
	BrinjalHand4.alpha=0
	
	
	local Brinjal5 = display.newImage("Brinjal.png",510,240)
	local BrinjalHand5 = display.newImage("BrinjalHand.png",420,220)
	BrinjalHand5.alpha=0
	
	local Brinjal6 = display.newImage("Brinjal.png",420,590)
	local BrinjalHand6 = display.newImage("BrinjalHand.png",320,550)
	BrinjalHand6.alpha=0
	
	local Brinjal7 = display.newImage("Brinjal.png",560,450)
	local BrinjalHand7 = display.newImage("BrinjalHand.png",460,420)
	BrinjalHand7.alpha =0
	
	
	local Brinjal8 = display.newImage("Brinjal.png",700,320)
	local BrinjalHand8 = display.newImage("BrinjalHand.png",600,300)
	BrinjalHand8.alpha = 0
	
	local nextB = display.newImage("next.png",850,650)
	local backB = display.newImage("back.png",30,650)
	
--====================================================================
-- Insert object in the group
--====================================================================

	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	localGroup:insert(Brinjal)
	localGroup:insert(Brinjal1)
	localGroup:insert(Brinjal2)
	localGroup:insert(Brinjal3)
	localGroup:insert(Brinjal4)
	localGroup:insert(Brinjal5)
	localGroup:insert(Brinjal6)
	localGroup:insert(Brinjal7)
	localGroup:insert(Brinjal8)
	localGroup:insert(BrinjalHand)
	localGroup:insert(BrinjalHand1)
	localGroup:insert(BrinjalHand2)
	localGroup:insert(BrinjalHand3)
	localGroup:insert(BrinjalHand4)
	localGroup:insert(BrinjalHand5)
	localGroup:insert(BrinjalHand6)
	localGroup:insert(BrinjalHand7)
	localGroup:insert(BrinjalHand8)
    localGroup:insert(nextB)
	localGroup:insert(backB)
	
--====================================================================
-- Memory clinup
--====================================================================
	
	local function cleanup()
	
		BG2:removeSelf()
		Tree:removeSelf()
		lif:removeSelf()
		Bull:removeSelf()
		nextB:removeSelf()
		backB:removeSelf()
		Brinjal:removeSelf()
		Brinjal1:removeSelf()
		Brinjal2:removeSelf()
		Brinjal3:removeSelf()
		Brinjal4:removeSelf()
		Brinjal5:removeSelf()
		Brinjal6:removeSelf()
		Brinjal7:removeSelf()
		Brinjal8:removeSelf()
		BrinjalHand:removeSelf()
		BrinjalHand1:removeSelf()
		BrinjalHand2:removeSelf()
		BrinjalHand3:removeSelf()
		BrinjalHand4:removeSelf()
		BrinjalHand5:removeSelf()
		BrinjalHand6:removeSelf()
		BrinjalHand7:removeSelf()
		BrinjalHand8:removeSelf()
		localGroup:removeSelf()
	
	end
--====================================================================
	-- Bull Coming Animation
--====================================================================
	
	transition.to(Bull, { time=1000, x = 900, onComplite = nil})
	
--====================================================================
	-- Watermelon Tuch Animation
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
		                Nine.alpha=0
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
		                Nine.alpha=0
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
		                Nine.alpha=0
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
		                Nine.alpha=0
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
		                Nine.alpha=0
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
		                Nine.alpha=0
		                end
		                
		                if(counter == 8) then
		                audio.play(eightSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Nine.alpha=0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =1
		                Nine.alpha=0
		                end
		                if(counter == 9) then
		                audio.play(nineSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Nine.alpha=0
		                Five.alpha =0
		                Six.alpha =0
		                Seven.alpha =0
		                Eight.alpha =0
		                Nine.alpha=1
		                end
		                
		            end
		            
		
		local function goTo9(event)
	    		if(event.phase == "began") then
		      			local function anim9()
		           			 counter = counter + 1
		                	 Brinjal8.alpha =0
		                	 transition.to(BrinjalHand8,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                	 BrinjalHand8.alpha = 1
		                	 check(counter)
		      			end
		      			anim9()
		       			Brinjal8:removeEventListener("touch", goTo9)
				 end
		 end
     	 Brinjal8:addEventListener("touch", goTo9) 
		 
		 
		
		local function goTo8(event)
		  if(event.phase == "began") then
		      local function anim8()
		            counter = counter + 1
		                 Brinjal7.alpha =0
		                transition.to(BrinjalHand7,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                BrinjalHand7.alpha = 1
		                check(counter)
		      end
		      anim8()
		       Brinjal7:removeEventListener("touch", goTo8)
		   end
		 end
    	 Brinjal7:addEventListener("touch", goTo8)
    	 
    	 
		local function goTo7(event)
		  if(event.phase == "began") then
		      local function anim7()
		            counter = counter + 1
		                Brinjal6.alpha =0
		                transition.to(BrinjalHand6,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                
		                BrinjalHand6.alpha = 1
		                check(counter)
		      end
		      anim7()
		       Brinjal6:removeEventListener("touch", goTo7)
		
		  end
		end
        Brinjal6:addEventListener("touch", goTo7)
        
		local function goTo6(event)
		  if(event.phase == "began") then
		      local function anim6()
		            counter = counter + 1
		            Brinjal5.alpha =0
		                transition.to(BrinjalHand5,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		               
		                 BrinjalHand5.alpha = 1
		                check(counter)
		      end
		      anim6()
		      Brinjal5:removeEventListener("touch", goTo6)
		 end
		end
        Brinjal5:addEventListener("touch", goTo6)
        
        
		local function goTo5(event)
		  if(event.phase == "began") then
		      local function anim5()
		            counter = counter + 1
		            Brinjal4.alpha =0
		                transition.to( BrinjalHand4,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil})
		               
		                BrinjalHand4.alpha = 1
		                check(counter)
		      end
		      anim5()
		      Brinjal4:removeEventListener("touch", goTo5)
		 end
		end
        Brinjal4:addEventListener("touch", goTo5)
        
        
		local function goTo4(event)
		  if(event.phase == "began") then
		      local function anim4()
		            counter = counter + 1
		             Brinjal3.alpha =0
		                transition.to( BrinjalHand3,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		              
		                BrinjalHand3.alpha = 1
		                check(counter)
		          
		      end
		      anim4()
		      Brinjal3:removeEventListener("touch", goTo4)
		 end
		end
        Brinjal3:addEventListener("touch", goTo4)
        
        
		local function goTo3(event)
		  if(event.phase == "began") then
		      local function anim3()
		               counter = counter + 1
		               Brinjal2.alpha =0
		                transition.to( BrinjalHand2,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		                
		                BrinjalHand2.alpha = 1
		                check(counter)
		      end
		      anim3()
		      Brinjal2:removeEventListener("touch", goTo3)
		  end
		end
        Brinjal2:addEventListener("touch", goTo3)
	 
	 
		local function goTo2(event)
		   if(event.phase == "began") then
		      local function anim2()
		           counter = counter + 1
		            Brinjal1.alpha =0
		        transition.to( BrinjalHand1,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		       
		        BrinjalHand1.alpha = 1
		        check(counter)
		      end
		      anim2()
		      Brinjal1:removeEventListener("touch", goTo2)
		    end
		end
        Brinjal1:addEventListener("touch", goTo2)
        
        
        
        local function goTo1(event)
		   if(event.phase == "began") then
		      local function anim1()
		           counter = counter + 1
		            Brinjal.alpha =0
		        transition.to( BrinjalHand,{ time=500, yScale =1.2, xScale =1.2, onComplete=nil })
		       
		        BrinjalHand.alpha = 1
		        check(counter)
		      end
		      anim1()
		      Brinjal:removeEventListener("touch", goTo1)
		    end
		end
        Brinjal:addEventListener("touch", goTo1)
        
        


	 
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
	
	Tree:addEventListener("touch", goTree)
	
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
		    		director:changeScene("Ten", "crossfade")
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
		          director:changeScene("Eight", "crossfade")
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