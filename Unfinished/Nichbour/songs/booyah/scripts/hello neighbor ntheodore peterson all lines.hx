var neighbor2:Character;
var bf2:Character;
function postCreate() {
    bf2 = new Character(boyfriend.x - 100,boyfriend.y + 100,"tootsbf",true,false);
    add(bf2);
    bf2.alpha = 0.001;

    neighbor2 = new Character(dad.x + 100,dad.y + 100,"Nichbourun",false,false);
    add(neighbor2);
    neighbor2.alpha = 0.001;
}

function beatHit(curBeat) {
    if (curBeat == 192) {
        FlxG.camera.flash(FlxColor.WHITE, 1);
        stage.stageSprites['runbg'].alpha = 1;
        stage.stageSprites['bg'].alpha = 0.001;
        boyfriend.alpha = 0.001;
        dad.alpha = 0.001;
        bf2.alpha = 1;
        neighbor2.alpha = 1;
    }
    if (curBeat == 384) {
        FlxG.camera.flash(FlxColor.WHITE, 1);
        stage.stageSprites['runbg'].alpha = 0.001;
        stage.stageSprites['bg'].alpha = 1;
        bf2.alpha = 0.001;
        neighbor2.alpha = 0.001;
        boyfriend.alpha = 1;
        dad.alpha = 1;
    }
}

function onPlayerHit(event:NoteHitEvent) {
    switch (event.direction) {
        default:
            bf2.playSingAnim(event.direction);
    }
}

function onDadHit(event:NoteHitEvent) {
    switch (event.direction) {
        default:
            neighbor2.playSingAnim(event.direction);
    }
}