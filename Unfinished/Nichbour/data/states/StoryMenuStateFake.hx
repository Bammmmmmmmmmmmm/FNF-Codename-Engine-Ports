function create() {

}
function update()
    if (FlxG.keys.justPressed.BACKSPACE || FlxG.keys.justPressed.ESCAPE)
        FlxG.switchState(new ModState("MainMenuState"));