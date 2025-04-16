final float tileSize = 8;
final color white = #ffffff;
final color black = #000000;
final float hTileSize = tileSize/2;

interface marchingDraw {
    void mDraw(float x, float y);
}

marchingDraw[] functions = {
    (float x, float y) -> { // case 00
        fill(white);
        square(x, y, tileSize);
    },
    (float x, float y) -> { // case 01
        fill(white);
        square(x, y, tileSize);
        fill(black);
        triangle(x, y + hTileSize, x, y + tileSize, x + hTileSize, y + tileSize);
    },
    (float x, float y) -> { // case 02
        fill(white);
        square(x, y, tileSize);
        fill(black);
        triangle(x + tileSize, y + hTileSize, x + tileSize, y + tileSize, x + hTileSize, y + tileSize);
    },
    (float x, float y) -> { // case 03
    	fill(white);
    	rect(x, y, tileSize, hTileSize);
    	fill(black);
    	rect(x, y + hTileSize, tileSize, hTileSize);
    },
    (float x, float y) -> { // case 04
    	fill(white);
        square(x, y, tileSize);
        fill(black);
        triangle(x + tileSize, y + hTileSize, x + tileSize, y, x + hTileSize, y);
    },
    (float x, float y) -> { // case 05
        fill(black);
        square(x, y, tileSize);
        fill(white);
        triangle(x + tileSize, y + hTileSize, x + tileSize, y + tileSize, x + hTileSize, y + tileSize);
        triangle(x, y + hTileSize, x, y, x + hTileSize, y);
    },
    (float x, float y) -> { // case 06
    	fill(white);
    	rect(x, y, hTileSize, tileSize);
    	fill(black);
    	rect(x + hTileSize, y, hTileSize, tileSize);
    },
    (float x, float y) -> {  // case 07
    	fill(black);
    	square(x, y, tileSize);
        fill(white);
        triangle(x, y + hTileSize, x, y, x + hTileSize, y);
    },
    (float x, float y) -> {  // case 08
        fill(white);
        square(x, y, tileSize);
        fill(black);
        triangle(x, y + hTileSize, x, y, x + hTileSize, y);

    },
    (float x, float y) -> { // case 09
        fill(black);
        rect(x, y, hTileSize, tileSize);
        fill(white);
        rect(x + hTileSize, y, hTileSize, tileSize);
    },
    (float x, float y) -> { // case 10
    	fill(black);
    	square(x, y, tileSize);
        fill(white);
        triangle(x + tileSize, y + hTileSize, x + tileSize, y, x + hTileSize, y);
        triangle(x, y + hTileSize, x, y + tileSize, x + hTileSize, y + tileSize);
    },
    (float x, float y) -> { // case 11
        fill(black);
        square(x, y, tileSize);
        fill(white);
        triangle(x + tileSize, y + hTileSize, x + tileSize, y, x + hTileSize, y);
    },
    (float x, float y) -> { // case 12
        fill(black);
        rect(x, y, tileSize, hTileSize);
        fill(white);
        rect(x, y + hTileSize, tileSize, hTileSize);
    },
    (float x, float y) -> { // case 13
        fill(black);
        square(x, y, tileSize);
        fill(white);
        triangle(x + tileSize, y + hTileSize, x + tileSize, y + tileSize, x + hTileSize, y + tileSize);
    },
    (float x, float y) -> { // case 01
        fill(black);
        square(x, y, tileSize);
        fill(white);
        triangle(x, y + hTileSize, x, y + tileSize, x + hTileSize, y + tileSize);
    },
    (float x, float y) -> { // case 15
    	fill(black);
    	square(x, y, tileSize);
    },
};
