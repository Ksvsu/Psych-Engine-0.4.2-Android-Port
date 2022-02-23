function onCreate()


	-- SansBg
	makeLuaSprite('stagefront', 'sansbg', -400, -520);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);
    addLuaSprite('stagefront', false);
    
    makeAnimatedLuaSprite('stageback', 'bones', -200, -20);
    addAnimationByPrefix('stageback', 'dance', 'BONES', 24, true)
    objectPlayAnimation('stageback', 'dance', false)
    setLuaSpriteScrollFactor('stageback', 1.0, 1.0);
    
    addLuaSprite('stagefront', false)
    addLuaSprite('stageback', false)
    setProperty('stageback.visible', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'bones' then
			setProperty('stagefront.visible', false);
			setProperty('stageback.visible', true);
	    end
	end

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end