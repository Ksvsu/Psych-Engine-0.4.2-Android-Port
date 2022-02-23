function onCreate()


	-- BonesBG
	makeAnimatedLuaSprite('stagefront', 'BONES', -200, 100);
    addAnimationByPrefix('stagefront', 'dance', 'BONES', 24, true)
    objectPlayAnimation('stagefront', 'dance', false)
    setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);
    
    addLuaSprite('stagefront', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'BONES' then
			setProperty('stagefront.visible', true);
			setProperty('stageback.visible', false);
	    end
	end
    
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end