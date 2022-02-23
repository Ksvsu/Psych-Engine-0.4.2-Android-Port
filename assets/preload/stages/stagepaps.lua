function onCreate()


	-- StagePapy
	makeLuaSprite('stagefront', 'stagepaps', -340, 220);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);


	addLuaSprite('stagefront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end