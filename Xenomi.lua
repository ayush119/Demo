module(..., package.seeall)



function new()
	local localGroup = display.newGroup()
	
	local theTimer
	local loadingImage
	
	local showLoadingScreen = function()
	loadingImage = display.newImage( "XenomiLoading.jpg",0,0)
		
		
	local goToLevel = function()
		loadingImage:removeSelf()
		director:changeScene( "FirstScreen", "crossfade" )
	end
		
		theTimer = timer.performWithDelay( 1000, goToLevel, 1 )
	end
	
	showLoadingScreen()
	
	clean = function()
		if theTimer then timer.cancel( theTimer ); end
		
		if loadingImage then
			
			display.remove( loadingImage )
			loadingImage = nil
		end
	end
	
-- MUST return a display.newGroup()
	return localGroup
end
