var playerPortraitNat:FlxSprite;
function create() {
    playerPortraitNat = new FlxSprite(50,510).loadAnimatedGraphic(Paths.image('portrait/' + boyfriend.curCharacter + "Nat"));
    playerPortraitNat.scale = 0.2;
    playerPortraitNat.cameras = [camHUD];
    add(playerPortraitNat);
}