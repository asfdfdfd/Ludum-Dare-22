package com.asfdfdfd.games.ld22
{
    [SWF(width="640", height="480", backgroundColor="#000000")]
    
    import org.flixel.FlxGame;
    
    public class Main extends FlxGame
    {	
        public function Main()
        {
            super(640, 480, PlayState);
            
            forceDebugger = true;
        }
    }
}