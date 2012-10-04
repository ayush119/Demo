module(..., package.seeall)

new = function ( params )
--====================================================================
-- IMPORT DIRECTOR CLASS
--====================================================================
	
	local director = require("director")
--====================================================================
-- Sounds
--====================================================================	
     local  avc1 = audio.loadStream("Single Cow-Sound.mp3")
     local  oneSound = audio.loadStream("oneSound.wav")
     local  twoSound = audio.loadStream("twoSound.wav") 
     local  threeSound = audio.loadStream("threeSound.wav")
     local  fourSound = audio.loadStream("fourSound.wav")
     local  fiveSound = audio.loadStream("fiveSound.wav")
     
     
--====================================================================
-- Creating display objects and getting handle
--====================================================================
	local localGroup = display.newGroup()
	local BG2 = display.newImage("BG3.jpg")
	local Tree = display.newImage("Tree.png",0,0,nil,0.1)
	local lif = display.newImage("Lif.png",500,10,nil)
	
	local capsicam1 = display.newImage("capsicam.png",440,200)
	local capsicam1_c = display.newImage("capsicam_c.png",385,185)
	capsicam1_c.alpha =0
	
	local capsicam2 = display.newImage("capsicam.png",600,350)
	local capsicam2_c = display.newImage("capsicam_c.png",545,335)
    capsicam2_c.alpha =0
    
	local capsicam3 = display.newImage("capsicam.png",270,330)
	local capsicam3_c = display.newImage("capsicam_c.png",220,315)
    capsicam3_c.alpha =0
    
	local capsicam4 = display.newImage("capsicam.png",540,530)
	local capsicam4_c = display.newImage("capsicam_c.png",490,515)
	capsicam4_c.alpha =0
	
	local capsicam5 = display.newImage("capsicam.png",330,520)
	local capsicam5_c = display.newImage("capsicam_c.png",275,505)
    capsicam5_c.alpha =0
    
    
	local One = display.newImage("One1.png",700,510)
	      One.alpha =0
	local Two = display.newImage("Two1.png",700,510)
	      Two.alpha =0
	local Three = display.newImage("Three1.png",700,510)
	      Three.alpha =0
	local Four = display.newImage("Four.png",700,510)
	      Four.alpha =0
	local Five = display.newImage("Five.png",700,510)
	      Five.alpha =0
	local Bull = display.newImage("Bull.png",860,30)
	
	local bullsheet1 = graphics.newImageSheet( "Bull.png", { width=320, height=231, numFrames=1 } )
    local bullinstance1 = display.newSprite( bullsheet1, { name="bull", start=1, count=1} )
	      bullinstance1.isVisible =false
	      bullinstance1.x = 808
	      bullinstance1.y = 145
	local nextB = display.newImage("next.png",830,650)
    local backB = display.newImage("back.png",30,650)
--====================================================================
-- Insert object in the group
--====================================================================
	
	localGroup:insert(BG2)
	localGroup:insert(Tree)
	localGroup:insert(lif)
	localGroup:insert(Bull)
	localGroup:insert(capsicam1)
	localGroup:insert(capsicam2)
	localGroup:insert(capsicam3)
	localGroup:insert(capsicam4)
	localGroup:insert(capsicam5)
	localGroup:insert(capsicam1_c)
	localGroup:insert(capsicam2_c)
	localGroup:insert(capsicam3_c)
	localGroup:insert(capsicam4_c)
	localGroup:insert(capsicam5_c)
	localGroup:insert(One)
	localGroup:insert(Two)
	localGroup:insert(Three)
	localGroup:insert(Four)
	localGroup:insert(Five)
	localGroup:insert(nextB)
	localGroup:insert(backB)
    localGroup:insert(bullinstance1)
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
		One:removeSelf() 
		Two:removeSelf()
		Three:removeSelf()
		Four:removeSelf()  
		Five:removeSelf()
		capsicam1:removeSelf()
		capsicam2:removeSelf()
		capsicam3:removeSelf()
		capsicam4:removeSelf()
		capsicam5:removeSelf()
		capsicam1_c:removeSelf()
		capsicam2_c:removeSelf()
		capsicam3_c:removeSelf()
		capsicam4_c:removeSelf()
		capsicam5_c:removeSelf()
		localGroup:removeSelf()
	end
--====================================================================
	-- Bull Coming Animation
--====================================================================
	
	transition.to(Bull, { time=1000, x = 850, onComplite = nil})
	
--====================================================================
	-- Watermelon Tuch Animation
--====================================================================	
	   local counter = 0
	   local imageno=0
	   
	     local function imagecheck()
	                    if(imageno == 1) then
	                       One.x = capsicam1.x
	                       One.y = capsicam1.y
	                       Two.x = capsicam1.x
	                       Two.y = capsicam1.y
	                       Three.x = capsicam1.x
	                       Three.y = capsicam1.y
	                       Four.x = capsicam1.x
	                       Four.y =  capsicam1.y
	                       Five.x = capsicam1.x
	                       Five.y = capsicam1.y
	                       --capsicam1.alpha =.5
	                    end
	                    
	                    if(imageno == 2) then
	                       One.x = capsicam2.x
	                       One.y = capsicam2.y
	                       Two.x = capsicam2.x
	                       Two.y = capsicam2.y
	                       Three.x = capsicam2.x
	                       Three.y = capsicam2.y
	                       Four.x = capsicam2.x
	                       Four.y =  capsicam2.y
	                       Five.x = capsicam2.x
	                       Five.y = capsicam2.y
	                       --capsicam2.alpha =0.5
	                    end
	                    
	                    if(imageno == 3) then
	                       One.x = capsicam3.x
	                       One.y = capsicam3.y
	                       Two.x = capsicam3.x
	                       Two.y = capsicam3.y
	                       Three.x = capsicam3.x
	                       Three.y = capsicam3.y
	                       Four.x = capsicam3.x
	                       Four.y =  capsicam3.y
	                       Five.x = capsicam3.x
	                       Five.y = capsicam3.y
	                       --capsicam3.alpha =0.5
	                    end
	                    
	                    if(imageno == 4) then
	                       One.x = capsicam4.x
	                       One.y = capsicam4.y
	                       Two.x = capsicam4.x
	                       Two.y = capsicam4.y
	                       Three.x = capsicam4.x
	                       Three.y = capsicam4.y
	                       Four.x = capsicam4.x
	                       Four.y =  capsicam4.y
	                       Five.x = capsicam4.x
	                       Five.y = capsicam4.y
	                       --capsicam4.alpha =0.5
	                    end
	                    
	                    if(imageno == 5) then
	                       One.x = capsicam5.x
	                       One.y = capsicam5.y
	                       Two.x = capsicam5.x
	                       Two.y = capsicam5.y
	                       Three.x = capsicam5.x
	                       Three.y = capsicam5.y
	                       Four.x = capsicam5.x
	                       Four.y =  capsicam5.y
	                       Five.x = capsicam5.x
	                       Five.y = capsicam5.y
	                       --capsicam5.alpha =0.5
	                    end
	     end
	                    
      
	     local function check()
	                    imagecheck()
		            if(counter == 1) then
		                audio.play(oneSound)
		                One.alpha =1
		                Two.alpha =0
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		            end
		            if(counter == 2) then
		                audio.play(twoSound)
		                One.alpha =0
		                Two.alpha =1
		                Three.alpha =0
		                Four.alpha =0
		                Five.alpha =0
		            end
		            if(counter == 3) then
		                audio.play(threeSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha=1
		                Four.alpha =0
		                Five.alpha =0
		            end
		            if(counter == 4) then
		                audio.play(fourSound)
		                One.alpha =0
		                Two.alpha =0
		                Three.alpha=0
		                Four.alpha =1
		                Five.alpha =0
		            end
		            if(counter == 5) then
		                audio.play(fiveSound)
		                One.alpha=0
		                Two.alpha=0
		                Three.alpha=0
		                Four.alpha =0
		                Five.alpha =1
		           
		                   capsicam1_c.alpha=1
		                
		                   transition.to( capsicam1_c,{ time=500,x=490,y=490,onComplete= nil })
		             
		                   capsicam2_c.alpha=1
		            
		                   transition.to( capsicam2_c,{ time=500,x=490,y=490,onComplete= nil })
		          
		                   capsicam3_c.alpha=1
		              
		                   transition.to( capsicam3_c,{ time=500,x=490,y=490,onComplete= nil })
		            
		                   capsicam4_c.alpha=1
		            
		                   transition.to( capsicam4_c,{ time=500,x=490,y=490,onComplete= nil })
		         
		                   capsicam5_c.alpha=1
		            
		                   transition.to( capsicam5_c,{ time=500,x=490,y=490,onComplete= nil })

		                   local function fiveanimate()
		                    
 		                      transition.to( Five,{ time=500,alpha=1,yScale =1.6,xScale=1.6,rotation = 720, onComplete= nil })
 		                   end
		                    transition.to( Five,{ time=500,x=490,y=490,onComplete= fiveanimate })
                             
		                end
		            end
		            
		
		local function goTo5(event)
		      if ( event.phase == "began") then
		          capsicam5.alpha = 0
		          capsicam5_c.alpha = 1
		          local function anim5()
		                imageno = 5
		                counter = counter + 1          
		                transition.to( capsicam5_c,{ time=100, yScale =1.1, xScale =1.1, onComplete=check(counter)})
		                capsicam5_c.alpha =.5
			      end
		       anim5()
		       capsicam5:removeEventListener("touch", goTo5)
		    end
		end
		
		local function goTo4(event)
		    if ( event.phase == "began") then
		          capsicam4.alpha = 0
		          capsicam4_c.alpha = 1
		         local function anim4()
		            imageno = 4
		            counter = counter + 1
		            transition.to( capsicam4_c,{ time=100, yScale =1.1, xScale =1.1, onComplete=check(counter)})
		            capsicam4_c.alpha =.5
		         end
		       anim4()
		       capsicam4:removeEventListener("touch", goTo4)
		    end
		end
		
		
		local function goTo3(event)
		      if ( event.phase == "began") then
		          capsicam3.alpha = 0
		          capsicam3_c.alpha = 1
		         local function anim3()
		               imageno = 3
		               counter = counter + 1
		               transition.to( capsicam3_c,{ time=100, yScale =1.2, xScale =1.2, onComplete=check(counter)})
		               capsicam3_c.alpha =.5
		         end
		        anim3()
		        capsicam3:removeEventListener("touch", goTo3)
		      end
		 end
		
		local function goTo2(event)
		      if ( event.phase == "began") then
		          capsicam2.alpha = 0
		          capsicam2_c.alpha = 1
		          local function anim2()
		                    imageno = 2
		                    counter = counter + 1
		                    transition.to( capsicam2_c,{ time=100, yScale =1.2, xScale =1.2, onComplete=check(counter) })
		                    capsicam2_c.alpha =.5
		          end
		        anim2()
		        capsicam2:removeEventListener("touch", goTo2)
		      end
		end  
		
		local function goTo1(event)
		    if ( event.phase == "began") then
		          capsicam1.alpha = 0
		          capsicam1_c.alpha = 1
		          local function anim1()
		            imageno = 1
		            counter = counter + 1
		            transition.to( capsicam1_c,{ time=100, yScale =1.2, xScale =1.2, onComplete=check(counter) })
		            capsicam1_c.alpha =.5
		          end
		         anim1()
		        capsicam1:removeEventListener("touch", goTo1)
		    end
	   end
	
	capsicam1:addEventListener("touch", goTo1)
	capsicam2:addEventListener("touch", goTo2)
	capsicam3:addEventListener("touch", goTo3)
	capsicam4:addEventListener("touch", goTo4)
	capsicam5:addEventListener("touch", goTo5)

	
--====================================================================
	-- lif  movement on user touch.
--====================================================================
 
	local function goBull(event)
		if ( event.phase == "began") then
	         bullinstance1.isVisible = true
		     audio.play(avc1)
		     transition.to( bullinstance1,{ time=500,yScale =1.03, xScale =1.03, onComplete= function() bullinstance1.isVisible = false end })
             --transition.to(Bull, { time=1000, x=825, y=230,  onComplete=elsticBehaviour })
        end
    end
	
	Bull:addEventListener("touch", goBull)
		
--====================================================================
	-- Goto Next 
--====================================================================
	 	   	
local function goNext(event)
     if ( event.phase == "began") then
	   	nextB:removeEventListener("touch", goNext)
        local function next(event)
                 cleanup()
		         director:changeScene("Six", "crossfade")
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
	-- Goto Back
--====================================================================
		 	   	
local function goBack(event)
       if ( event.phase == "began") then
	   	backB:removeEventListener("touch", goBack)
        local function next(event)
                 cleanup()
		         director:changeScene("Four", "crossfade")
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