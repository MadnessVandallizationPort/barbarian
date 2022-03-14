package;

import flixel.FlxG;
import openfl.display.Sprite;
#if sys
import webm.*;
#end

class WebmHandler
{
	#if sys
	public var vidPath:String = "";
	public var initialized:Bool = false;
	#end
	
	
	public function new()
	{
	}
	
	public function source(?vPath:String):Void
	{
		if (vPath != null && vPath.length > 0)
		{
		vidPath = vPath;
		}
	}
	
	public var stopped:Bool = false;
	public var restarted:Bool = false;
	public var played:Bool = false;
	public var ended:Bool = false;
	public var paused:Bool = false;
	
	public function togglePause():Void
	{
		if (paused)
		{
			resume();
		} else {
			pause();
		}
	}
	
	public function onStop():Void
	{
		stopped = true;
	}
	
	public function onRestart():Void
	{
		restarted = true;
	}
	
	public function onPlay():Void
	{
		played = true;
	}
	
	public function onEnd():Void
	{
		trace("IT ENDED!");
		ended = true;
	}
}
