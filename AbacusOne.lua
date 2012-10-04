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
	local localGroup = display.newGroup()
	
	local objTable1 = {}
	local objTable2 = {}
	local objTable3 = {}
	local objTable4 = {}
	local objTable5 = {}
	local objTable6 = {}
	local objTable7 = {}
	local objTable8 = {}
	local objTable9 = {}
	local objTable10 = {}
	
	local BG2 = display.newImage("AbacusBG.jpg")
	
	local abcus = display.newImage("Abacus.png",30,30)
	
	local a1 = display.newImage("a1.png",114,110)
	      objTable1[#objTable1+1] = a1      
	
	local a2 = display.newImage("a2.png",116,160)
	local a21 = display.newImage("a2.png",170,160)
		  objTable2[#objTable2+1] = a2
		  objTable2[#objTable2+1] = a21
		
	local a3 = display.newImage("a3.png",116,220)
	local a31 = display.newImage("a3.png",172,220)
	local a32 = display.newImage("a3.png",226,220)
	      objTable3[#objTable3+1] = a3
		  objTable3[#objTable3+1] = a31
		  objTable3[#objTable3+1] = a32
		  
		  
	local a4 = display.newImage("a4.png",116,280)
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
	
	local a9 = display.newImage("a9.png",116,580)
	local a91 = display.newImage("a9.png",175,580)
	local a92 = display.newImage("a9.png",231,580)
	local a93 = display.newImage("a9.png",290,580)
	local a94 = display.newImage("a9.png",345,580)
	local a95 = display.newImage("a9.png",398,580)
	local a96 = display.newImage("a9.png",455,580)
	local a97 = display.newImage("a9.png",510,580)
	local a98 = display.newImage("a9.png",564,580)
	      objTable9[#objTable9+1] = a9
	 	  objTable9[#objTable9+1] = a91
		  objTable9[#objTable9+1] = a92
		  objTable9[#objTable9+1] = a93
	      objTable9[#objTable9+1] = a94
	      objTable9[#objTable9+1] = a95
	      objTable9[#objTable9+1] = a96
	      objTable9[#objTable9+1] = a97
	      objTable9[#objTable9+1] = a98
	  
	
	
	local a0 = display.newImage("a10.png",116,635)
	local a01 = display.newImage("a10.png",170,635)
	local a02 = display.newImage("a10.png",226,635)
	local a03 = display.newImage("a10.png",285,635)
	local a04 = display.newImage("a10.png",340,635)
	local a05 = display.newImage("a10.png",393,635)
	local a06 = display.newImage("a10.png",450,635)
	local a07 = display.newImage("a10.png",505,635)
	local a08 = display.newImage("a10.png",560,635)
	local a09 = display.newImage("a10.png",605,635)
	      objTable10[#objTable10+1] = a0
	 	  objTable10[#objTable10+1] = a01
		  objTable10[#objTable10+1] = a02
		  objTable10[#objTable10+1] = a03
	      objTable10[#objTable10+1] = a04
	      objTable10[#objTable10+1] = a05
	      objTable10[#objTable10+1] = a06
	      objTable10[#objTable10+1] = a07
	      objTable10[#objTable10+1] = a08
	      objTable10[#objTable10+1] = a09
	
	
	local backB = display.newImage("back.png",0,680)
	backB.yScale =.5
	backB.xScale =.5
    local counter = 0
    --local transitionTable = {}
    
    --for i=1, #transitionTable do
--========================================================================================
-- Adding all object with the Group.
--========================================================================================	
	localGroup:insert(BG2)
	localGroup:insert(abcus)
		localGroup:insert(a1)
		--localGroup:insert(a2)
		
		localGroup:insert(a2)
		localGroup:insert(a21)
		
		
		
		localGroup:insert(a3)
		localGroup:insert(a31)
		localGroup:insert(a32)
		localGroup:insert(a4)
		localGroup:insert(a41)
		localGroup:insert(a42)
		localGroup:insert(a43)
		localGroup:insert(a5)
		localGroup:insert(a51)
		localGroup:insert(a52)
		localGroup:insert(a53)
		localGroup:insert(a54)
		localGroup:insert(a6)
		localGroup:insert(a61)
		localGroup:insert(a62)
		localGroup:insert(a63)
		localGroup:insert(a64)
		localGroup:insert(a65)
		localGroup:insert(a7)
		localGroup:insert(a71)
		localGroup:insert(a72)
		localGroup:insert(a73)
		localGroup:insert(a74)
		localGroup:insert(a75)
		localGroup:insert(a76)
		localGroup:insert(a8)
		localGroup:insert(a81)
		localGroup:insert(a82)
		localGroup:insert(a83)
		localGroup:insert(a84)
		localGroup:insert(a85)
		localGroup:insert(a86)
		localGroup:insert(a87)
		
		localGroup:insert(a9)
		localGroup:insert(a91)
		localGroup:insert(a92)
		localGroup:insert(a93)
		localGroup:insert(a94)
		localGroup:insert(a95)
		localGroup:insert(a96)
		localGroup:insert(a97)
		localGroup:insert(a98)
		
		localGroup:insert(a0)
		localGroup:insert(a01)
		localGroup:insert(a02)
		localGroup:insert(a03)
		localGroup:insert(a04)
		localGroup:insert(a05)
		localGroup:insert(a06)
		localGroup:insert(a07)
		localGroup:insert(a08)
		localGroup:insert(a09)
		
		
		
	localGroup:insert(backB)
	
--========================================================================================
--Memory clinup 
--========================================================================================		
	local function cleanup()
		
		
		BG2:removeSelf()
     	nextB:removeSelf()
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
     	
     	a9:removeSelf()
     	a91:removeSelf()
     	a92:removeSelf()
     	a93:removeSelf()
     	a94:removeSelf()
     	a95:removeSelf()
     	a96:removeSelf()
     	a97:removeSelf()
     	a98:removeSelf()
     	
     	
     	a0:removeSelf()
     	a01:removeSelf()
     	a02:removeSelf()
     	a03:removeSelf()
     	a04:removeSelf()
     	a05:removeSelf()
     	a06:removeSelf()
     	a07:removeSelf()
     	a08:removeSelf()
     	a09:removeSelf()
     	
     	
		localGroup:removeSelf()
		
		
	end

--========================================================================================
	--touch the a1 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      transition.to(a1, {time=3000, x=900, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
	      
	    end
	end

	a1:addEventListener("touch", moveright)
	
--========================================================================================
	--a2,a21 function move 
--========================================================================================	
local function movedecision2()
 if( counter == 2) then
 for i=1,2 do
  transition.to(objTable2[i], {time=3000, x=790+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=2,2 do
    transition.to(objTable2[i], {time=3000, x=790+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end

	
--========================================================================================
	--touch the a2 
--========================================================================================

	
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 2
	      print(counter)
	     
	      movedecision2()
	    end
	end

	a2:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a21 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      print(counter)
	     
	      movedecision2()
	    end
	end

	a21:addEventListener("touch", moveright)


--========================================================================================
	--a3,a31,a32 function move 
--========================================================================================	


local function movedecision3()

 if( counter == 3) then
   for i=1,3 do
    transition.to(objTable3[i], {time=3000, x=745+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
   end
 end
 if( counter == 2) then
 for i=2,3 do
  transition.to(objTable3[i], {time=3000, x=745+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=3,3 do
    transition.to(objTable3[i], {time=3000, x=745+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end

--========================================================================================
	--touch the a3 
--========================================================================================

	
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 3
	      print(counter)
	      --transition.to(a3, {time=3000, x=900, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
	      movedecision3()
	    end
	end

	a3:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a31 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 2
	      print(counter)
	      --transition.to(a31, {time=3000, x=845, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
	      movedecision3()
	    end
	end

	a31:addEventListener("touch", moveright)
	
	
	--========================================================================================
	--touch the a32 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      print(counter)
	      --transition.to(a32, {time=3000, x=792, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
	      movedecision3()
	    end
	end

	a32:addEventListener("touch", moveright)
	
	
	
	
--========================================================================================
	--a4,a41,a42,a43 function move 
--========================================================================================	


local function movedecision4()

  if( counter == 4) then
    for i=1,4 do
    transition.to(objTable4[i], {time=3000, x=700+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
 if( counter == 3) then
   for i=2,4 do
   transition.to(objTable4[i], {time=3000, x=700+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
   end
   end
 
 if( counter == 2) then
 for i=3,4 do
  transition.to(objTable4[i], {time=3000, x=700+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=4,4 do
    transition.to(objTable4[i], {time=3000, x=700+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end


--========================================================================================
	--touch the a4
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 4
	      movedecision4()
	    end
	end

	a4:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a41 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 3
	      movedecision4()
	      
	    end
	end

	a41:addEventListener("touch", moveright)
	
	
	--========================================================================================
	--touch the a42 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 2
	      movedecision4()
	      
	    end
	end

	a42:addEventListener("touch", moveright)

--========================================================================================
	--touch the a43 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      movedecision4()
	    end
	end

	a43:addEventListener("touch", moveright)



--========================================================================================
	--a5,a51,a52,a53,a54 function move 
--========================================================================================	


local function movedecision5()

  if( counter == 5) then
    for i=1,5 do
    transition.to(objTable5[i], {time=3000, x=650+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  
  if( counter == 4) then
    for i=2,5 do
    transition.to(objTable5[i], {time=3000, x=650+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
 if( counter == 3) then
   for i=3,5 do
   transition.to(objTable5[i], {time=3000, x=650+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
   end
   end
 
 if( counter == 2) then
 for i=4,5 do
  transition.to(objTable5[i], {time=3000, x=650+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=5,5 do
    transition.to(objTable5[i], {time=3000, x=650+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end



--========================================================================================
	--touch the a5
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 5
	      movedecision5()
	      
	    end
	end

	a5:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a51 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 4
	      movedecision5()
	      
	    end
	end

	a51:addEventListener("touch", moveright)
	
	
	--========================================================================================
	--touch the a52 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 3
	      movedecision5()
	      
	    end
	end

	a52:addEventListener("touch", moveright)

--========================================================================================
	--touch the a53 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 2
	      movedecision5()
	      
	    end
	end

	a53:addEventListener("touch", moveright)


--========================================================================================
	--touch the a54 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      movedecision5()
	      
	    end
	end

	a54:addEventListener("touch", moveright)





--========================================================================================
	--a6,a61,a62,a63,a64,a65 function move 
--========================================================================================	


local function movedecision6()

  
  if( counter == 6) then
    for i=1,6 do
    transition.to(objTable6[i], {time=3000, x=600+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 5) then
    for i=2,6 do
    transition.to(objTable6[i], {time=3000, x=600+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  
  if( counter == 4) then
    for i=3,6 do
    transition.to(objTable6[i], {time=3000, x=600+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
 if( counter == 3) then
   for i=4,6 do
   transition.to(objTable6[i], {time=3000, x=600+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
   end
   end
 
 if( counter == 2) then
 for i=5,6 do
  transition.to(objTable6[i], {time=3000, x=600+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=6,6 do
    transition.to(objTable6[i], {time=3000, x=600+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end



		--========================================================================================
	--touch the a6
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 6
	      movedecision6()
	    end
	end

	a6:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a61 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 5
	      movedecision6()
	    end
	end

	a61:addEventListener("touch", moveright)
	
	
	--========================================================================================
	--touch the a62 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 4
	      movedecision6()
	    end
	end

	a62:addEventListener("touch", moveright)

--========================================================================================
	--touch the a63 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 3
	      movedecision6()
	    end
	end

	a63:addEventListener("touch", moveright)


--========================================================================================
	--touch the a64 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 2
	      movedecision6()
	    end
	end

	a64:addEventListener("touch", moveright)


--========================================================================================
	--touch the a65 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      movedecision6()
	      
	    end
	end

	a65:addEventListener("touch", moveright)



--========================================================================================
	--a7,a71,a72,a73,a74,a75,a76 function move 
--========================================================================================	


local function movedecision7()

  
  if( counter == 7) then
    for i=1,7 do
    transition.to(objTable7[i], {time=3000, x=550+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 6) then
    for i=2,7 do
    transition.to(objTable7[i], {time=3000, x=550+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 5) then
    for i=3,7 do
    transition.to(objTable7[i], {time=3000, x=550+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  
  if( counter == 4) then
    for i=4,7 do
    transition.to(objTable7[i], {time=3000, x=550+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
 if( counter == 3) then
   for i=5,7 do
   transition.to(objTable7[i], {time=3000, x=550+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
   end
   end
 
 if( counter == 2) then
 for i=6,7 do
  transition.to(objTable7[i], {time=3000, x=550+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=7,7 do
    transition.to(objTable7[i], {time=3000, x=550+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end



--========================================================================================
	--touch the a7
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 7
	      movedecision7()
	      
	    end
	end

	a7:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a71 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 6
	      movedecision7()
	      
	    end
	end

	a71:addEventListener("touch", moveright)
	
	
	--========================================================================================
	--touch the a72 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 5
	      movedecision7()
	      
	    end
	end

	a72:addEventListener("touch", moveright)

--========================================================================================
	--touch the a73 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 4
	      movedecision7()
	      
	    end
	end

	a73:addEventListener("touch", moveright)


--========================================================================================
	--touch the a74 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 3
	      movedecision7()
	      
	    end
	end

	a74:addEventListener("touch", moveright)


--========================================================================================
	--touch the a75 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 2
	      movedecision7()
	      
	    end
	end

	a75:addEventListener("touch", moveright)


--========================================================================================
	--touch the a76 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      movedecision7()
	      
	    end
	end

	a76:addEventListener("touch", moveright)






--========================================================================================
	--a8,a81,a82,a83,a84,a85,a86,a87 function move 
--========================================================================================	


local function movedecision8()

  
  if( counter == 8) then
    for i=1,8 do
    transition.to(objTable8[i], {time=3000, x=500+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 7) then
    for i=2,8 do
    transition.to(objTable8[i], {time=3000, x=500+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 6) then
    for i=3,8 do
    transition.to(objTable8[i], {time=3000, x=500+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 5) then
    for i=4,8 do
    transition.to(objTable8[i], {time=3000, x=500+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  
  if( counter == 4) then
    for i=5,8 do
    transition.to(objTable8[i], {time=3000, x=500+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
 if( counter == 3) then
   for i=6,8 do
   transition.to(objTable8[i], {time=3000, x=500+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
   end
   end
 
 if( counter == 2) then
 for i=7,8 do
  transition.to(objTable8[i], {time=3000, x=500+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=8,8 do
    transition.to(objTable8[i], {time=3000, x=500+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end





--========================================================================================
	--touch the a8
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 8
	      movedecision8()
	      
	    end
	end

	a8:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a81 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 7
	      movedecision8()
	      
	    end
	end

	a81:addEventListener("touch", moveright)
	
	
	--========================================================================================
	--touch the a82 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 6
	      movedecision8()
	      
	    end
	end

	a82:addEventListener("touch", moveright)

--========================================================================================
	--touch the a83 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 5
	      movedecision8()
	      
	    end
	end

	a83:addEventListener("touch", moveright)


--========================================================================================
	--touch the a84 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 4
	      movedecision8()
	      
	    end
	end

	a84:addEventListener("touch", moveright)


--========================================================================================
	--touch the a85 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 3
	      movedecision8()
	      
	    end
	end

	a85:addEventListener("touch", moveright)


--========================================================================================
	--touch the a86 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 2
	      movedecision8()
	      
	    end
	end

	a86:addEventListener("touch", moveright)
	
	
--========================================================================================
	--touch the a87 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      movedecision8()

	    end
	end

	a87:addEventListener("touch", moveright)

 --========================================================================================
	--a9,a91,a92,a93,a94,a95,a96,a97,a98 function move 
--========================================================================================	


local function movedecision9()

  if( counter == 9) then
    for i=1,9 do
    transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 8) then
    for i=2,9 do
    transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 7) then
    for i=3,9 do
    transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 6) then
    for i=4,9 do
    transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 5) then
    for i=5,9 do
    transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  
  if( counter == 4) then
    for i=6,9 do
    transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
 if( counter == 3) then
   for i=7,9 do
   transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
   end
   end
 
 if( counter == 2) then
 for i=8,9 do
  transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=9,9 do
    transition.to(objTable9[i], {time=3000, x=450+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end

--========================================================================================
	--touch the a9
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 9
	      movedecision9()
	      
	    end
	end

	a9:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a91 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 8
	      movedecision9()
	      
	    end
	end

	a91:addEventListener("touch", moveright)
	
	
	--========================================================================================
	--touch the a92 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 7
	      movedecision9()
	      
	    end
	end

	a92:addEventListener("touch", moveright)

--========================================================================================
	--touch the a93 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 6
	     movedecision9()
	      
	    end
	end

	a93:addEventListener("touch", moveright)


--========================================================================================
	--touch the a94 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 5
	      movedecision9()
	      
	    end
	end

	a94:addEventListener("touch", moveright)


--========================================================================================
	--touch the a95 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 4
	      movedecision9()
	      
	    end
	end

	a95:addEventListener("touch", moveright)


--========================================================================================
	--touch the a96 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 3
	      movedecision9()
	      
	    end
	end

	a96:addEventListener("touch", moveright)
	
	
--========================================================================================
	--touch the a97 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 2
	      movedecision9()

	    end
	end

	a97:addEventListener("touch", moveright)

--========================================================================================
	--touch the a98 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      movedecision9()

	    end
	end

	a98:addEventListener("touch", moveright)




 --========================================================================================
	--a0,a01,a02,a03,a04,a05,a06,a07,a08,a09 function move 
--========================================================================================	


local function movedecision10()

  
 if( counter == 10) then
    for i=1,10 do
    transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end 
  if( counter == 9) then
    for i=2,10 do
    transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 8) then
    for i=3,10 do
    transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 7) then
    for i=4,10 do
    transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 6) then
    for i=5,10 do
    transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  if( counter == 5) then
    for i=6,10 do
    transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
  
  if( counter == 4) then
    for i=7,10 do
    transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
    end
 if( counter == 3) then
   for i=8,10 do
   transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
   end
   end
 
 if( counter == 2) then
 for i=9,10 do
  transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
  end
 end
 if( counter == 1) then
   for i=10,10 do
    transition.to(objTable10[i], {time=3000, x=400+i*50, transition = easing.inOutExpo,oncomplete = function () audio.play(onewav) end })
    end
 end


end

--========================================================================================
	--touch the a0
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 10
	      movedecision10()
	      
	    end
	end

	a0:addEventListener("touch", moveright)
	

--========================================================================================
	--touch the a01 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 9
	      movedecision10()
	      
	    end
	end

	a01:addEventListener("touch", moveright)
	
	
	--========================================================================================
	--touch the a02 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 8
	      movedecision10()
	      
	    end
	end

	a02:addEventListener("touch", moveright)

--========================================================================================
	--touch the a03 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 7
	     movedecision10()
	      
	    end
	end

	a03:addEventListener("touch", moveright)


--========================================================================================
	--touch the a04 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 6
	      movedecision10()
	      
	    end
	end

	a04:addEventListener("touch", moveright)


--========================================================================================
	--touch the a05 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	     counter = 5
	      movedecision10()
	      
	    end
	end

	a05:addEventListener("touch", moveright)


--========================================================================================
	--touch the a06 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 4
	      movedecision10()
	      
	    end
	end

	a06:addEventListener("touch", moveright)
	
	
--========================================================================================
	--touch the a07 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 3
	      movedecision10()

	    end
	end

	a07:addEventListener("touch", moveright)

--========================================================================================
	--touch the a08 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 2
	      movedecision10()

	    end
	end

	a08:addEventListener("touch", moveright)

--========================================================================================
	--touch the a09 
--========================================================================================
	local function moveright(event)
	    if( event.phase == "began") then
	      counter = 1
	      movedecision10()

	    end
	end

	a09:addEventListener("touch", moveright)






--========================================================================================
	-- Goto prev 
--========================================================================================
	local function goPrev(event)
	    if( event.phase == "began") then
	    backB:removeEventListener("touch", goPrev)
	   	director:changeScene("OptionMenu", "crossfade")
	   end
	end

	backB:addEventListener("touch", goPrev)

--========================================================================================
	-- INITIALIZE
--========================================================================================
	
	local initVars = function ()
		
	end
	
  --------------------------
	-- Initiate variables
  --------------------------
	
	initVars()
	return localGroup
	
end