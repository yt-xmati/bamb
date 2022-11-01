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
        sus = new FlxSprite(0, 0);
        sus.loadGraphic(Paths.image("dave/secret/psst", "shared"));
        FlxG.sound.play(Paths.sound("screechPsst", "preload"), 1, false);
        add(sus);

        new FlxTimer().start(4, jumpscare);
    }
    public function jumpscare(bruh:FlxTimer = null)
    {
        sus.loadGraphic(Paths.image("dave/secret/attack", "shared"));
        new FlxTimer().start(0.5, closeGame);
    }
    public function closeGame(time:FlxTimer = null)
    {
        System.exit(0);
    }
}
