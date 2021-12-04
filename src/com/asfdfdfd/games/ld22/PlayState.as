package com.asfdfdfd.games.ld22
{	
    import org.flixel.*;
    import org.flixel.plugin.photonstorm.*;
    
    public class PlayState extends FlxState
    {				
		private var _hero:FlxSprite = new FlxSprite(640 / 2, 480 / 2, Assets.ImgHero);
		private var _enemy:FlxSprite = new FlxSprite(0, 0, Assets.ImgEnemy);
		
        override public function create():void
        {
            FlxG.mouse.show();
			
			FlxG.bgColor = 0xffaaaaaa;
			
			add(_hero);
			add(_enemy);
        }
        
        override public function update():void
        {
            super.update();
			
			checkInput();
			
			moveEnemy();
        }
		
		private function checkInput():void
		{			
			setXVelocity();
			setYVelocity();
		}
		
		private function moveEnemy():void
		{
			var xDistance:int = _enemy.x - _hero.x;
			
			_enemy.velocity.x = Settings.ENEMY_SPEED * (xDistance < 0 ? 1 : -1);
			
			var yDistance:int = _enemy.y - _hero.y;
			
			_enemy.velocity.y = Settings.ENEMY_SPEED * (yDistance < 0 ? 1 : -1);
		}
		
		private function setXVelocity():void
		{
			if (FlxG.keys.justPressed("LEFT"))
			{
				_hero.velocity.x = -100;				
			}
			else if (FlxG.keys.justPressed("RIGHT"))
			{
				_hero.velocity.x = 100;
			}
			else if (!FlxG.keys.LEFT && !FlxG.keys.RIGHT)
			{
				_hero.velocity.x = 0;
			}
		}		
		
		private function setYVelocity():void
		{
			if (FlxG.keys.justPressed("UP"))
			{
				_hero.velocity.y = -100;				
			}
			else if (FlxG.keys.justPressed("DOWN"))
			{
				_hero.velocity.y = 100;
			}
			else if (!FlxG.keys.UP && !FlxG.keys.DOWN)
			{
				_hero.velocity.y = 0;
			}
		}
        
        override public function draw():void
        {
            super.draw();
        }
    }
}