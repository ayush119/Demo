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
	
	local mainGroup = display.newGroup()
	local localGroup = display.newGroup()
	local localGroup1 = display.newGroup()
	local localGroup2 = display.newGroup()
	local localGroup3 = display.newGroup()
	local localGroup4 = display.newGroup()
	local localGroup5 = display.newGroup()
	local localGroup6 = display.newGroup()
	local localGroup7 = display.newGroup()
	counter = 0
	
	local objTable1 = {}
	local objTable2 = {}
	local objTable3 = {}
	local objTable4 = {}
	local objTable5 = {}
	local objTable6 = {}
	local objTable7 = {}
	local objTable8 = {}
	local objTable9 = {}
	
	
	
	local BG2 = display.newImage("AbacusBG.jpg")
	local abcus = display.newImage("Abacus.png",30,30)
	
	local a1 = display.newImage("a1.png",114,110,0,0)
	      objTable1[#objTable1+1] = a1   
	      
    local a2 = display.newImage("a2.png",116,160,0,0)
	local a21 = display.newImage("a2.png",170,160,0,0)
		  objTable2[#objTable2+1] = a2
		  objTable2[#objTable2+1] = a21
		  
		  
	local a3 = display.newImage("a3.png",116,220,0,0)
	local a31 = display.newImage("a3.png",172,220,0,0)
	local a32 = display.newImage("a3.png",226,220,0,0)
	      objTable3[#objTable3+1] = a3
		  objTable3[#objTable3+1] = a31
		  objTable3[#objTable3+1] = a32
		  
		  
	local a4  = display.newImage("a4.png",116,280)
	local a41 = display.newImage("a4.png",172,280)
	local a42 = display.newImage("a4.png",228,280)
	local a43 = display.newImage("a4.png",286,280)
	      objTable4[#objTable4+1] = a4
		  objTable4[#objTable4+1] = a41
		  objTable4[#objTable4+1] = a42
		  objTable4[#objTable4+1] = a43
		  
		  
		  
	local a5 = display.newImage("a5.png",116,345)
	local a51 = display.newImage("a5.png",172,345)
	local a52 = display.newImage("a5.png",228,345)
	local a53 = display.newImage("a5.png",286,345)
	local a54 = display.newImage("a5.png",340,345)
	      objTable5[#objTable5+1] = a5
		  objTable5[#objTable5+1] = a51
		  objTable5[#objTable5+1] = a52
		  objTable5[#objTable5+1] = a53
	      objTable5[#objTable5+1] = a54
	      
	local a6 = display.newImage("a6.png",116,400)
	local a61 = display.newImage("a6.png",170,400)
	local a62 = display.newImage("a6.png",226,400)
	local a63 = display.newImage("a6.png",284,400)
	local a64 = display.newImage("a6.png",338,400)
	local a65 = display.newImage("a6.png",392,400)
	      objTable6[#objTable6+1] = a6
		  objTable6[#objTable6+1] = a61
		  objTable6[#objTable6+1] = a62
		  objTable6[#objTable6+1] = a63
	      objTable6[#objTable6+1] = a64
	      objTable6[#objTable6+1] = a65  
	      
	local a7 = display.newImage("a7.png",116,465)
	local a71 = display.newImage("a7.png",170,465)
	local a72 = display.newImage("a7.png",226,465)
	local a73 = display.newImage("a7.png",284,465)
	local a74 = display.newImage("a7.png",338,465)
	local a75 = display.newImage("a7.png",392,465)
	local a76 = display.newImage("a7.png",450,465)
	      objTable7[#objTable7+1] = a7
		  objTable7[#objTable7+1] = a71
		  objTable7[#objTable7+1] = a72
		  objTable7[#objTable7+1] = a73
	      objTable7[#objTable7+1] = a74
	      objTable7[#objTable7+1] = a75
	      objTable7[#objTable7+1] = a76
	         
	         
	local a8 = display.newImage("a8.png",116,520)
	local a81 = display.newImage("a8.png",179,520)
	local a82 = display.newImage("a8.png",235,520)
	local a83 = display.newImage("a8.png",294,520)
	local a84 = display.newImage("a8.png",348,520)
	local a85 = display.newImage("a8.png",402,520)
	local a86 = display.newImage("a8.png",459,520)
	local a87 = display.newImage("a8.png",515,520)
	      objTable8[#objTable8+1] = a8
		  objTable8[#objTable8+1] = a81
		  objTable8[#objTable8+1] = a82
		  objTable8[#objTable8+1] = a83
	      objTable8[#objTable8+1] = a84
	      objTable8[#objTable8+1] = a85
	      objTable8[#objTable8+1] = a86
	      objTable8[#objTable8+1] = a87         
	
	
		  	  
	
--========================================================================================
-- Adding all object with the Group.
--========================================================================================	
	localGroup:insert(BG2)
	localGroup:insert(abcus)
	localGroup:insert(a1)
	
	--insert object 2
	mainGroup:insert(localGroup)
	local function ins()
	   for i=1,2 do
		localGroup1:insert(objTable2[i])
		end
	end
	ins()	
	mainGroup:insert(localGroup1)
	
	
	
	--insert object 3
	mainGroup:insert(localGroup)
	local function inst()
	   for i=1,3 do
		localGroup2:insert(objTable3[i])
		end
	end
	inst()	
	mainGroup:insert(localGroup2)
	
	
	--insert object 4
	mainGroup:insert(localGroup)
	local function inse()
	   for i=1,4 do
		localGroup3:insert(objTable4[i])
		end
	end
	inse()	
	mainGroup:insert(localGroup3)
	
	--insert object 5
	mainGroup:insert(localGroup)
	local function inse5()
	   for i=1,5 do
		localGroup4:insert(objTable5[i])
		end
	end
	inse5()	
	mainGroup:insert(localGroup4)
	
	--insert object 6
	mainGroup:insert(localGroup)
	local function inse6()
	   for i=1,6 do
		localGroup5:insert(objTable6[i])
		end
	end
	inse6()	
	mainGroup:insert(localGroup5)
	
	--insert object 7
	mainGroup:insert(localGroup)
	local function inse7()
	   for i=1,7 do
		localGroup6:insert(objTable7[i])
		end
	end
	inse7()	
	mainGroup:insert(localGroup6)
	
	--insert object 8
	mainGroup:insert(localGroup)
	local function inse8()
	   for i=1,8 do
		localGroup7:insert(objTable8[i])
		end
	end
	inse8()	
	mainGroup:insert(localGroup7)
	
--========================================================================================
--Memory clinup 
--========================================================================================
	
	local function cleanup()
	BG2:removeSelf()
	a1:removeSelf()
	
	a2:removeSelf()
    a21:removeSelf()
    
    a3:removeSelf()
    a31:removeSelf()
    a32:removeSelf()
    
    a4:removeSelf()
    a41:removeSelf()
    a42:removeSelf()
    a43:removeSelf()
    
    a5:removeSelf()
    a51:removeSelf()
    a52:removeSelf()
    a53:removeSelf()
    a54:removeSelf()
    
    a6:removeSelf()
    a61:removeSelf()
    a62:removeSelf()
    a63:removeSelf()
    a64:removeSelf()
    a65:removeSelf()
    
    
    a7:removeSelf()
    a71:removeSelf()
    a72:removeSelf()
    a73:removeSelf()
    a74:removeSelf()
    a75:removeSelf()
    a76:removeSelf()
    
    a8:removeSelf()
    a81:removeSelf()
    a82:removeSelf()
    a83:removeSelf()
    a84:removeSelf()
    a85:removeSelf()
    a86:removeSelf()
    a87:removeSelf()
   
    localGroup:removeSelf()
    localGroup1:removeSelf()
    localGroup2:removeSelf()
    localGroup3:removeSelf()
    localGroup4:removeSelf()
    localGroup5:removeSelf()
    localGroup6:removeSelf()
    localGroup7:removeSelf()
	end
	
	

--========================================================================================   
	--touch the a1 
--========================================================================================	

local function onTouch1( event )
        local t = event.target                               
        local phase = event.phase
        if "began" == phase then                            
        	local parent = t.parent
        	parent:insert( t )
       	    display.getCurrentStage():setFocus( t, event.id )
        	t.isFocus = true                                     
        	t.x0 = event.x - t.x
        	elseif t.isFocus then
        		if "moved" == phase then                                                  
        			t.x = event.x - t.x0
        			elseif "ended" == phase or "cancelled" == phase then
        			display.getCurrentStage():setFocus( t, nil )
        			t.isFocus = false
        		end
    	end                                                  
end


       a1:addEventListener( "touch", onTouch1)
     


	
--========================================================================================   
	--touch the a2
--========================================================================================	
g_x = 0


local function onTouch2( event )
        
        
    
        counter=1
        local tempGroup=display.newGroup()
        for i=counter,2 do
        tempGroup:insert(objTable2[i])
        end
        mainGroup:insert(tempGroup)
        
         t1 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t1.isFocus = true                                     
        		tempGroup.x = event.x - t1.x
        		--print(t)
        	elseif t1.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a21: ",a21.x)                             

        			tempGroup.x = event.x - t1.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup.x = event.x - t1.x

        			    g_x = tempGroup.x
        			    
       				    print(tempGroup.x)
        		end
        		
    		end 
                                                          
end


       a2:addEventListener( "touch", onTouch2)
     

--========================================================================================   
	--touch the a21
--========================================================================================	
g_x = 0


local function onTouch21( event )
        
        
    --if(g_x == 0) then
        counter=2
        local tempGroup1=display.newGroup()
        for i=counter,2 do
        tempGroup1:insert(objTable2[i])
        end
        mainGroup:insert(tempGroup1)
        
         t1 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t1.isFocus = true                                     
        		tempGroup1.x = event.x - t1.x
        		--print(t)
        	elseif t1.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a21: ",a21.x)                             

        			tempGroup1.x = event.x - t1.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup1.x = event.x - t1.x

        			    g_x = tempGroup1.x
        			    
       				    print(tempGroup1.x)
        		end
        		
    		end 
     
       
                                                          
end


 a21:addEventListener( "touch", onTouch21)
       
       
       
       
--========================================================================================   
	--touch the a3
--========================================================================================	
g = 0

local function onTouch3( event )
        
        
    
        counter=1
        local tempGroup3=display.newGroup()
        for i=counter,3 do
        tempGroup3:insert(objTable3[i])
        end
        mainGroup:insert(tempGroup3)
        
         t3 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t3.isFocus = true                                     
        		tempGroup3.x = event.x - t3.x
        		--print(t)
        	elseif t3.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a3: ",a3.x)                             

        			tempGroup3.x = event.x - t3.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup3.x = event.x - t3.x

        			    g = tempGroup3.x
        			    
       				    print(tempGroup3.x)
        		end
        		
    		end 
                                                          
end


       a3:addEventListener( "touch", onTouch3)
     
--========================================================================================   
	--touch the a31
--========================================================================================	
g1 = 0

local function onTouch31( event )
        
        
    
        counter=2
        local tempGroup31=display.newGroup()
        for i=counter,3 do
        tempGroup31:insert(objTable3[i])
        end
        mainGroup:insert(tempGroup31)
        
         t31 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t31.isFocus = true                                     
        		tempGroup31.x = event.x - t31.x
        		--print(t)
        	elseif t31.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a31: ",a31.x)                             

        			tempGroup31.x = event.x - t31.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup31.x = event.x - t31.x

        			    g = tempGroup31.x
        			    
       				    print(tempGroup31.x)
        		end
        		
    		end 
                                                          
end


       a31:addEventListener( "touch", onTouch31)
     

--========================================================================================   
	--touch the a32
--========================================================================================	
g12 = 0

local function onTouch32( event )
        
        
    
        counter=3
        local tempGroup32=display.newGroup()
        for i=counter,3 do
        tempGroup32:insert(objTable3[i])
        end
        mainGroup:insert(tempGroup32)
        
         t32 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t32.isFocus = true                                     
        		tempGroup32.x = event.x - t32.x
        		--print(t)
        	elseif t32.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a32: ",a32.x)                             

        			tempGroup32.x = event.x - t32.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup32.x = event.x - t32.x

        			    g12 = tempGroup32.x
        			    
       				    print(tempGroup32.x)
        		end
        		
    		end 
                                                          
end


       a32:addEventListener( "touch", onTouch32)
     

          
--========================================================================================   
	--touch the a4
--========================================================================================	
g4 = 0

local function onTouch4( event )
        
        
    
        counter=1
        local tempGroup4=display.newGroup()
        for i=counter,4 do
        tempGroup4:insert(objTable4[i])
        end
        mainGroup:insert(tempGroup4)
        
         t4 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t4.isFocus = true                                     
        		tempGroup4.x = event.x - t4.x
        		--print(t)
        	elseif t4.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a4: ",a4.x)                             

        			tempGroup4.x = event.x - t4.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup4.x = event.x - t4.x

        			    g4 = tempGroup4.x
        			    
       				    print(tempGroup4.x)
        		end
        		
    		end 
                                                          
end


       a4:addEventListener( "touch", onTouch4)
       
--========================================================================================   
	--touch the a41
--========================================================================================	
g41 = 0

local function onTouch41( event )
        
        
    
        counter=2
        local tempGroup41=display.newGroup()
        for i=counter,4 do
        tempGroup41:insert(objTable4[i])
        end
        mainGroup:insert(tempGroup41)
        
         t41 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t41.isFocus = true                                     
        		tempGroup41.x = event.x - t41.x
        		--print(t)
        	elseif t41.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a41: ",a41.x)                             

        			tempGroup41.x = event.x - t41.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup41.x = event.x - t41.x

        			    g41 = tempGroup41.x
        			    
       				    print(tempGroup41.x)
        		end
        		
    		end 
                                                          
end


       a41:addEventListener( "touch", onTouch41)
     

--========================================================================================   
	--touch the a42
--========================================================================================	
g42 = 0

local function onTouch42( event )
        
        
    
        counter=3
        local tempGroup42=display.newGroup()
        for i=counter,4 do
        tempGroup42:insert(objTable4[i])
        end
        mainGroup:insert(tempGroup42)
        
         t42 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t42.isFocus = true                                     
        		tempGroup42.x = event.x - t42.x
        		--print(t)
        	elseif t42.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a42: ",a42.x)                             

        			tempGroup42.x = event.x - t42.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup42.x = event.x - t42.x

        			    g42 = tempGroup42.x
        			    
       				    print(tempGroup42.x)
        		end
        		
    		end 
                                                          
end


       a42:addEventListener( "touch", onTouch42)
     
    
    --========================================================================================   
	--touch the a43
--========================================================================================	
g43 = 0

local function onTouch43( event )
        
        
    
        counter=4
        local tempGroup43=display.newGroup()
        for i=counter,4 do
        tempGroup43:insert(objTable4[i])
        end
        mainGroup:insert(tempGroup43)
        
         t43 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t43.isFocus = true                                     
        		tempGroup43.x = event.x - t43.x
        		--print(t)
        	elseif t43.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a43: ",a43.x)                             

        			tempGroup43.x = event.x - t43.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup43.x = event.x - t43.x

        			    g43 = tempGroup43.x
        			    
       				    print(tempGroup43.x)
        		end
        		
    		end 
                                                          
end


       a43:addEventListener( "touch", onTouch43)
     




--========================================================================================   
	--touch the a5
--========================================================================================	
g5 = 0

local function onTouch5( event )
        
        
    
        counter=1
        local tempGroup5=display.newGroup()
        for i=counter,5 do
        tempGroup5:insert(objTable5[i])
        end
        mainGroup:insert(tempGroup5)
        
         t5 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t5.isFocus = true                                     
        		tempGroup5.x = event.x - t5.x
        		--print(t)
        	elseif t5.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a5: ",a5.x)                             

        			tempGroup5.x = event.x - t5.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup5.x = event.x - t5.x

        			    g5 = tempGroup5.x
        			    
       				    print(tempGroup5.x)
        		end
        		
    		end 
                                                          
end


       a5:addEventListener( "touch", onTouch5)
       
--========================================================================================   
	--touch the a51
--========================================================================================	
g51 = 0

local function onTouch51( event )
        
        
    
        counter=2
        local tempGroup51=display.newGroup()
        for i=counter,5 do
        tempGroup51:insert(objTable5[i])
        end
        mainGroup:insert(tempGroup51)
        
         t51 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t51.isFocus = true                                     
        		tempGroup51.x = event.x - t51.x
        		--print(t)
        	elseif t51.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a41: ",a51.x)                             

        			tempGroup51.x = event.x - t51.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup51.x = event.x - t51.x

        			    g51 = tempGroup51.x
        			    
       				    print(tempGroup51.x)
        		end
        		
    		end 
                                                          
end


       a51:addEventListener( "touch", onTouch51)
     

--========================================================================================   
	--touch the a52
--========================================================================================	
g52 = 0

local function onTouch52( event )
        
        
    
        counter=3
        local tempGroup52=display.newGroup()
        for i=counter,5 do
        tempGroup52:insert(objTable5[i])
        end
        mainGroup:insert(tempGroup52)
        
         t52 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t52.isFocus = true                                     
        		tempGroup52.x = event.x - t52.x
        		--print(t)
        	elseif t52.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a52: ",a52.x)                             

        			tempGroup52.x = event.x - t52.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup52.x = event.x - t52.x

        			    g52 = tempGroup52.x
        			    
       				    print(tempGroup52.x)
        		end
        		
    		end 
                                                          
end


       a52:addEventListener( "touch", onTouch52)
     
    
--========================================================================================   
	--touch the a53
--========================================================================================	
g53 = 0

local function onTouch53( event )
        
        
    
        counter=4
        local tempGroup53=display.newGroup()
        for i=counter,5 do
        tempGroup53:insert(objTable5[i])
        end
        mainGroup:insert(tempGroup53)
        
         t53 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t53.isFocus = true                                     
        		tempGroup53.x = event.x - t53.x
        		--print(t)
        	elseif t53.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a43: ",a53.x)                             

        			tempGroup53.x = event.x - t53.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup53.x = event.x - t53.x

        			    g53 = tempGroup53.x
        			    
       				    print(tempGroup53.x)
        		end
        		
    		end 
                                                          
end


       a53:addEventListener( "touch", onTouch53)

--========================================================================================   
	--touch the a54
--========================================================================================	
g54 = 0

local function onTouch54( event )
        
        
    
        counter=5
        local tempGroup54=display.newGroup()
        for i=counter,5 do
        tempGroup54:insert(objTable5[i])
        end
        mainGroup:insert(tempGroup54)
        
         t54 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t54.isFocus = true                                     
        		tempGroup54.x = event.x - t54.x
        		--print(t)
        	elseif t54.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a43: ",a54.x)                             

        			tempGroup54.x = event.x - t54.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup54.x = event.x - t54.x

        			    g54 = tempGroup54.x
        			    
       				    print(tempGroup54.x)
        		end
        		
    		end 
                                                          
end


       a54:addEventListener( "touch", onTouch54)




--========================================================================================   
	--touch the a6
--========================================================================================	
g6 = 0

local function onTouch6( event )
        
        
    
        counter=1
        local tempGroup6=display.newGroup()
        for i=counter,6 do
        tempGroup6:insert(objTable6[i])
        end
        mainGroup:insert(tempGroup6)
        
         t6 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t6.isFocus = true                                     
        		tempGroup6.x = event.x - t6.x
        		--print(t)
        	elseif t6.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a6: ",a6.x)                             

        			tempGroup6.x = event.x - t6.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup6.x = event.x - t6.x

        			    g6 = tempGroup6.x
        			    
       				    print(tempGroup6.x)
        		end
        		
    		end 
                                                          
end


       a6:addEventListener( "touch", onTouch6)
       

--========================================================================================   
	--touch the a61
--========================================================================================	
g61 = 0

local function onTouch61( event )
        
        
    
        counter=2
        local tempGroup61=display.newGroup()
        for i=counter,6 do
        tempGroup61:insert(objTable6[i])
        end
        mainGroup:insert(tempGroup61)
        
         t61 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t61.isFocus = true                                     
        		tempGroup61.x = event.x - t61.x
        		--print(t)
        	elseif t61.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a61: ",a61.x)                             

        			tempGroup61.x = event.x - t61.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup61.x = event.x - t61.x

        			    g61 = tempGroup61.x
        			    
       				    print(tempGroup61.x)
        		end
        		
    		end 
                                                          
end


       a61:addEventListener( "touch", onTouch61)
     


--========================================================================================   
	--touch the a62
--========================================================================================	
g62 = 0

local function onTouch62( event )
        
        
    
        counter=3
        local tempGroup62=display.newGroup()
        for i=counter,6 do
        tempGroup62:insert(objTable6[i])
        end
        mainGroup:insert(tempGroup62)
        
         t62 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t62.isFocus = true                                     
        		tempGroup62.x = event.x - t62.x
        		--print(t)
        	elseif t62.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a62: ",a62.x)                             

        			tempGroup62.x = event.x - t62.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup62.x = event.x - t62.x

        			    g62 = tempGroup62.x
        			    
       				    print(tempGroup62.x)
        		end
        		
    		end 
                                                          
end


       a62:addEventListener( "touch", onTouch62)
     
    
--========================================================================================   
	--touch the a63
--========================================================================================	
g63 = 0

local function onTouch63( event )
        
        
    
        counter=4
        local tempGroup63=display.newGroup()
        for i=counter,6 do
        tempGroup63:insert(objTable6[i])
        end
        mainGroup:insert(tempGroup63)
        
         t63 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t63.isFocus = true                                     
        		tempGroup63.x = event.x - t63.x
        		--print(t)
        	elseif t63.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a63: ",a63.x)                             

        			tempGroup63.x = event.x - t63.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup63.x = event.x - t63.x

        			    g63 = tempGroup63.x
        			    
       				    print(tempGroup63.x)
        		end
        		
    		end 
                                                          
end


       a63:addEventListener( "touch", onTouch63)


--========================================================================================   
	--touch the a64
--========================================================================================	
g64 = 0

local function onTouch64( event )
        
        
    
        counter=5
        local tempGroup64=display.newGroup()
        for i=counter,6 do
        tempGroup64:insert(objTable6[i])
        end
        mainGroup:insert(tempGroup64)
        
         t64 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t64.isFocus = true                                     
        		tempGroup64.x = event.x - t64.x
        		--print(t)
        	elseif t64.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a63: ",a64.x)                             

        			tempGroup64.x = event.x - t64.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup64.x = event.x - t64.x

        			    g64 = tempGroup64.x
        			    
       				    print(tempGroup64.x)
        		end
        		
    		end 
                                                          
end


       a64:addEventListener( "touch", onTouch64)
       
       
 --========================================================================================   
	--touch the a65
--========================================================================================	
g65 = 0

local function onTouch65( event )
        
        
    
        counter=6
        local tempGroup65=display.newGroup()
        for i=counter,6 do
        tempGroup65:insert(objTable6[i])
        end
        mainGroup:insert(tempGroup65)
        
         t65 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t65.isFocus = true                                     
        		tempGroup65.x = event.x - t65.x
        		--print(t)
        	elseif t65.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a65: ",a65.x)                             

        			tempGroup65.x = event.x - t65.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup65.x = event.x - t65.x

        			    g65 = tempGroup65.x
        			    
       				    print(tempGroup65.x)
        		end
        		
    		end 
                                                          
end


a65:addEventListener( "touch", onTouch65)   
       
       
       
--========================================================================================   
	--touch the a7
--========================================================================================	
g7 = 0

local function onTouch7( event )
        
        
    
        counter=1
        local tempGroup7=display.newGroup()
        for i=counter,7 do
        tempGroup7:insert(objTable7[i])
        end
        mainGroup:insert(tempGroup7)
        
         t7 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t7.isFocus = true                                     
        		tempGroup7.x = event.x - t7.x
        		--print(t)
        	elseif t7.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a7: ",a7.x)                             

        			tempGroup7.x = event.x - t7.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup7.x = event.x - t7.x

        			    g7 = tempGroup7.x
        			    
       				    print(tempGroup7.x)
        		end
        		
    		end 
                                                          
end


       a7:addEventListener( "touch", onTouch7)
       
       --========================================================================================   
	--touch the a71
--========================================================================================	
g71 = 0

local function onTouch71( event )
        
        
    
        counter=2
        local tempGroup71=display.newGroup()
        for i=counter,7 do
        tempGroup71:insert(objTable7[i])
        end
        mainGroup:insert(tempGroup71)
        
         t71 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t71.isFocus = true                                     
        		tempGroup71.x = event.x - t71.x
        		--print(t)
        	elseif t71.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a71: ",a71.x)                             

        			tempGroup71.x = event.x - t71.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup71.x = event.x - t71.x

        			    g71 = tempGroup71.x
        			    
       				    print(tempGroup71.x)
        		end
        		
    		end 
                                                          
end


       a71:addEventListener( "touch", onTouch71)
     


--========================================================================================   
	--touch the a72
--========================================================================================	
g72 = 0

local function onTouch72( event )
        
        
    
        counter=3
        local tempGroup72=display.newGroup()
        for i=counter,7 do
        tempGroup72:insert(objTable7[i])
        end
        mainGroup:insert(tempGroup72)
        
         t72 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t72.isFocus = true                                     
        		tempGroup72.x = event.x - t72.x
        		--print(t)
        	elseif t72.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a62: ",a72.x)                             

        			tempGroup72.x = event.x - t72.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup72.x = event.x - t72.x

        			    g72 = tempGroup72.x
        			    
       				    print(tempGroup72.x)
        		end
        		
    		end 
                                                          
end


       a72:addEventListener( "touch", onTouch72)
              
              
              
 --========================================================================================   
	--touch the a73
--========================================================================================	
g73 = 0

local function onTouch73( event )
        
        
    
        counter=4
        local tempGroup73=display.newGroup()
        for i=counter,7 do
        tempGroup73:insert(objTable7[i])
        end
        mainGroup:insert(tempGroup73)
        
         t73 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t73.isFocus = true                                     
        		tempGroup73.x = event.x - t73.x
        		--print(t)
        	elseif t73.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a73: ",a73.x)                             

        			tempGroup73.x = event.x - t73.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup73.x = event.x - t73.x

        			    g73 = tempGroup73.x
        			    
       				    print(tempGroup73.x)
        		end
        		
    		end 
                                                          
end


       a73:addEventListener( "touch", onTouch73)


--========================================================================================   
	--touch the a74
--========================================================================================	
g74 = 0

local function onTouch74( event )
        
        
    
        counter=5
        local tempGroup74=display.newGroup()
        for i=counter,7 do
        tempGroup74:insert(objTable7[i])
        end
        mainGroup:insert(tempGroup74)
        
         t74 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t74.isFocus = true                                     
        		tempGroup74.x = event.x - t74.x
        		--print(t)
        	elseif t74.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a73: ",a74.x)                             

        			tempGroup74.x = event.x - t74.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup74.x = event.x - t74.x

        			    g74 = tempGroup74.x
        			    
       				    print(tempGroup74.x)
        		end
        		
    		end 
                                                          
end


       a74:addEventListener( "touch", onTouch74)
       
       
 --========================================================================================   
	--touch the a75
--========================================================================================	
g75 = 0

local function onTouch75( event )
        
        
    
        counter=6
        local tempGroup75=display.newGroup()
        for i=counter,7 do
        tempGroup75:insert(objTable7[i])
        end
        mainGroup:insert(tempGroup75)
        
         t75 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t75.isFocus = true                                     
        		tempGroup75.x = event.x - t75.x
        		--print(t)
        	elseif t75.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a75: ",a75.x)                             

        			tempGroup75.x = event.x - t75.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup75.x = event.x - t75.x

        			    g75 = tempGroup75.x
        			    
       				    print(tempGroup75.x)
        		end
        		
    		end 
                                                          
end


a75:addEventListener( "touch", onTouch75)        
       
       
--========================================================================================   
	--touch the a76
--========================================================================================	
g76 = 0

local function onTouch76( event )
        
        
    
        counter=7
        local tempGroup76=display.newGroup()
        for i=counter,7 do
        tempGroup76:insert(objTable7[i])
        end
        mainGroup:insert(tempGroup76)
        
         t76 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t76.isFocus = true                                     
        		tempGroup76.x = event.x - t76.x
        		--print(t)
        	elseif t76.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a76: ",a76.x)                             

        			tempGroup76.x = event.x - t76.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup76.x = event.x - t76.x

        			    g76 = tempGroup76.x
        			    
       				    print(tempGroup76.x)
        		end
        		
    		end 
                                                          
end


a76:addEventListener( "touch", onTouch76)        
       
       
       
       
--========================================================================================   
	--touch the a8
--========================================================================================	
g8 = 0

local function onTouch8( event )
        
        
    
        counter=1
        local tempGroup8=display.newGroup()
        for i=counter,8 do
        tempGroup8:insert(objTable8[i])
        end
        mainGroup:insert(tempGroup8)
        
         t8 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t8.isFocus = true                                     
        		tempGroup8.x = event.x - t8.x
        		--print(t)
        	elseif t8.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a8: ",a8.x)                             

        			tempGroup8.x = event.x - t8.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup8.x = event.x - t8.x

        			    g8 = tempGroup8.x
        			    
       				    print(tempGroup8.x)
        		end
        		
    		end 
                                                          
end


       a8:addEventListener( "touch", onTouch8)
       
       --========================================================================================   
	--touch the a81
--========================================================================================	
g81 = 0

local function onTouch81( event )
        
        
    
        counter=2
        local tempGroup81=display.newGroup()
        for i=counter,8 do
        tempGroup81:insert(objTable8[i])
        end
        mainGroup:insert(tempGroup81)
        
         t81 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t81.isFocus = true                                     
        		tempGroup81.x = event.x - t81.x
        		--print(t)
        	elseif t81.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a81: ",a81.x)                             

        			tempGroup81.x = event.x - t81.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup81.x = event.x - t81.x

        			    g81 = tempGroup81.x
        			    
       				    print(tempGroup81.x)
        		end
        		
    		end 
                                                          
end


       a81:addEventListener( "touch", onTouch81)
     


--========================================================================================   
	--touch the a82
--========================================================================================	
g82 = 0

local function onTouch82( event )
        
        
    
        counter=3
        local tempGroup82=display.newGroup()
        for i=counter,8 do
        tempGroup82:insert(objTable8[i])
        end
        mainGroup:insert(tempGroup82)
        
         t82 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t82.isFocus = true                                     
        		tempGroup82.x = event.x - t82.x
        		--print(t)
        	elseif t82.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a82: ",a82.x)                             

        			tempGroup82.x = event.x - t82.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup82.x = event.x - t82.x

        			    g82 = tempGroup82.x
        			    
       				    print(tempGroup82.x)
        		end
        		
    		end 
                                                          
end


       a82:addEventListener( "touch", onTouch82)
              
              
              
 --========================================================================================   
	--touch the a83
--========================================================================================	
g83 = 0

local function onTouch83( event )
        
        
    
        counter=4
        local tempGroup83=display.newGroup()
        for i=counter,8 do
        tempGroup83:insert(objTable8[i])
        end
        mainGroup:insert(tempGroup83)
        
         t83 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t83.isFocus = true                                     
        		tempGroup83.x = event.x - t83.x
        		--print(t)
        	elseif t83.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a83: ",a83.x)                             

        			tempGroup83.x = event.x - t83.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup83.x = event.x - t83.x

        			    g83 = tempGroup83.x
        			    
       				    print(tempGroup83.x)
        		end
        		
    		end 
                                                          
end


       a83:addEventListener( "touch", onTouch83)


--========================================================================================   
	--touch the a84
--========================================================================================	
g84 = 0

local function onTouch84( event )
        
        
    
        counter=5
        local tempGroup84=display.newGroup()
        for i=counter,8 do
        tempGroup84:insert(objTable8[i])
        end
        mainGroup:insert(tempGroup84)
        
         t84 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t84.isFocus = true                                     
        		tempGroup84.x = event.x - t84.x
        		--print(t)
        	elseif t84.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a83: ",a84.x)                             

        			tempGroup84.x = event.x - t84.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup84.x = event.x - t84.x

        			    g84 = tempGroup84.x
        			    
       				    print(tempGroup84.x)
        		end
        		
    		end 
                                                          
end


       a84:addEventListener( "touch", onTouch84)
       
       
 --========================================================================================   
	--touch the a85
--========================================================================================	
g85 = 0

local function onTouch85( event )
        
        
    
        counter=6
        local tempGroup85=display.newGroup()
        for i=counter,8 do
        tempGroup85:insert(objTable8[i])
        end
        mainGroup:insert(tempGroup85)
        
         t85 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t85.isFocus = true                                     
        		tempGroup85.x = event.x - t85.x
        		--print(t)
        	elseif t85.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a85: ",a85.x)                             

        			tempGroup85.x = event.x - t85.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup85.x = event.x - t85.x

        			    g85 = tempGroup85.x
        			    
       				    print(tempGroup85.x)
        		end
        		
    		end 
                                                          
end


a85:addEventListener( "touch", onTouch85)        
       
       
--========================================================================================   
	--touch the a86
--========================================================================================	
g86 = 0

local function onTouch86( event )
        
        
    
        counter=7
        local tempGroup86=display.newGroup()
        for i=counter,8 do
        tempGroup86:insert(objTable8[i])
        end
        mainGroup:insert(tempGroup86)
        
         t86 = event.target                               
        
        local phase = event.phase
        	if "began" == phase then    
    
        		t86.isFocus = true                                     
        		tempGroup86.x = event.x - t86.x
        		--print(t)
        	elseif t86.isFocus then
        		if "moved" == phase then 
        		      print("event: ",event.x)
        		      print("a86: ",a86.x)                             

        			tempGroup86.x = event.x - t86.x 

        		end
        		if "ended" == phase or "cancelled" == phase then

        			tempGroup86.x = event.x - t86.x

        			    g86 = tempGroup86.x
        			    
       				    print(tempGroup86.x)
        		end
        		
    		end 
                                                          
end


a86:addEventListener( "touch", onTouch86)        
              
       
       
 

--========================================================================================
	-- Goto prev 
--========================================================================================
	local function goPrev(event)
	    if( event.phase == "began") then
	    backB:removeEventListener("touch", goPrev)
	   	director:changeScene("OptionMenu", "crossfade")
	   end
	end

	--backB:addEventListener("touch", goPrev)

--========================================================================================
	-- INITIALIZE
--========================================================================================
	
	local initVars = function ()
		
	end
	
  --------------------------
	-- Initiate variables
  --------------------------
	
	initVars()
	return display.newGroup()
	
end