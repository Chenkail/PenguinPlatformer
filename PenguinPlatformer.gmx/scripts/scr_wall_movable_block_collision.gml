///Prevent movable block from colliding with blocks

//Prevent falling through block if on top and set fall speed to 0
if (other.y <= y - blockHeight/2) {
    if (other.y > blockTop - other.blockHeight/2) {
        other.y = blockTop - other.blockHeight/2;
        other.fallSpeed = 0;
    }
} else {
    //Stop moving if running into a wall
    
    //Movable block is left of block
    if ((other.x < x) && (other.x > blockLeft - other.blockWidth/2)) {
        other.x = blockLeft - other.blockWidth/2;
    }
    //Movable block is right of block
    if ((other.x > x) && (other.x < blockRight + other.blockWidth/2)) {
        other.x = blockRight + other.blockWidth/2;
    }
}

