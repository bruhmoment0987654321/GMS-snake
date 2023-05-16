left = keyboard_check(global.keyLeft);
right = keyboard_check(global.keyRight);
up = keyboard_check(global.keyUp)
down = keyboard_check(global.keyDown);

#region movement
var _keysPressed = left + right + up + down;
var 

if (_keysPressed > 0){
	var _movehor = right-left;
	var _movever = down-up;
	hsp = _movehor*movesp;
	vsp = _movever*movesp;
	
}
#endregion

x += hsp;
y += vsp;