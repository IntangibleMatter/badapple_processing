import processing.sound.*;

int[][] frames;

SoundFile music;

boolean candraw = false;

int frame = 0;

void setup() {
    size(480, 360);
    noStroke();
    frameRate(30);
	
	music = new SoundFile(this, "apple.mp3");
    loadCsv();
    music.loop();
    
    println(music.isPlaying(), music.duration());
}

void loadCsv() {
    Table table = loadTable("apple.csv");

    frames = new int[table.getRowCount()][table.getColumnCount()];

    for (int i = 0; i < table.getRowCount(); i++) {
        TableRow row = table.getRow(i);

        for (int j = 0; j < row.getColumnCount(); j++) {
            frames[i][j] = row.getInt(j);
        }
    }
    candraw = true;
}

// todo: parse each frame of bad apple and turn it into a csv file

void draw() {
    if (!candraw) return;
    //if (!music.isPlaying()) music.play();
    //music.jump(frame * (1.0/30.0));
    println(music.isPlaying());

    //println(frames[frame], frame);
    /*for (int j = 0; j < 45; j++) {
        for (int i = 0; i < 60; i++) {
            functions[frames[frame][(i + (j * 45)) % 2700 ]].mDraw(i * tileSize, j * tileSize);
        }
    }*/
    for (int i = 0; i < frames[frame].length; i++) {
    	int x = i % 60;
    	int y = i / 60;
    	functions[frames[frame][i]].mDraw(x * tileSize, y * tileSize);
    }

    frame++;
    frame = frame % frames.length;
    //println(frameRate);
}
