import flixel.FlxSprite;
import flixel.FlxState;
import flixel.*;
import flixel.util.FlxTimer;
import flash.system.System;

class psstState extends FlxState
{
    var sus:FlxSprite;

    public function new()
    {
        super();
    }
    override public function create()
    {
        super.create();
        FlxG.sound.play(Paths.sound("psst", "preload"), 1, false);
        sus = new FlxSprite(0, 0);
        sus.loadGraphic(Paths.image("dave/secret/psst", "shared"));
        add(sus);

        new FlxTimer().start(4, jumpscare);
    }
    public function jumpscare(bruh:FlxTimer = null)
    {
        sus.loadGraphic(Paths.image("dave/secret/lmao", "shared"));
        FlxG.sound.play(Paths.sound("scarey", "preload"), 1, false);
        new FlxTimer().start(0.5, closeGame);
    }
    public function closeGame(time:FlxTimer = null)
    {
        System.exit(0);
    }
}
