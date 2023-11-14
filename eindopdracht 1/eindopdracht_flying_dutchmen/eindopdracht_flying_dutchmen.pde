PImage bg, rvp, topPipe, botPipe;  // Background, Player, pipes
int bgx, bgy, rvpx, rvpy, g, Vky, score;
int[] pipeX, pipeY; // arrays
boolean gameover;

// ONE TIME
void setup() {
  size(800, 620);
  bg = loadImage("./img/bg.png");
  rvp = loadImage("./img/rvp.png");
  botPipe = loadImage("./img/botPipe.png");
  topPipe = loadImage("./img/topPipe.png");
  rvpx = 100;
  rvpy = 50;
  g = 1; // Gravity == Speed of downward acceleration
  pipeX = new int[5];  // [0,0,0,0]
  pipeY = new int[pipeX.length];
  gameover = false;
  score = 0;

  // POPULATE THE ARRAY WITH VALUES
  for (int i = 0; i < pipeX.length; i++) {
    pipeX[i] = width + 200 * i;
    pipeY[i] = (int) random(-350, 0);
  }
}

// MAIN GAME LOOP
void draw() {
  setBg();
  if (!gameover) {
    kirby();

    for (int i = 0; i < pipeX.length; i++) {
      image(topPipe, pipeX[i], pipeY[i]);
      image(botPipe, pipeX[i], pipeY[i] + 680);
      pipeX[i] -= 2;

      // Check for collision
      if (rvpx + rvp.width > pipeX[i] && rvpx < pipeX[i] + topPipe.width &&
        (rvpy < pipeY[i] + topPipe.height || rvpy + rvp.height > pipeY[i] + 680)) {
        gameOver();
      }

      // 
      if (rvpx > pipeX[i] + topPipe.width && rvpx < pipeX[i] + topPipe.width + 2) {
        score++;
      }

      if (pipeX[i] < -200) {
        pipeX[i] = width;
        pipeY[i] = (int) random(-350, 0);
      }
    }
  }

  // Display the score
  fill(255);
  textSize(24);
  textAlign(RIGHT, TOP);
  text("Score: " + score, width - 20, 20);
}

void kirby() {
  image(rvp, rvpx, rvpy);
  rvpy = rvpy + Vky;
  Vky = Vky + g;

  // Check for gameover condition (kirby hits the ground)
  if (rvpy > height - rvp.height) {
    gameOver();
  }
}

void mousePressed() {
  if (!gameover) {
    Vky = -15;
  }
}

void setBg() {
  image(bg, bgx, bgy);
  image(bg, bgx + bg.width, bgy);
  bgx--;
  if (bgx < -bg.width) {
    bgx = 0; // RESET images to starting position 
  }
}

void gameOver() {
  // Add code here to handle the game over state
  fill(0, 0, 0); // zwarte tekstkleur
  textSize(32);
  textAlign(CENTER, CENTER);
  text("GAME OVER, YOU LOSE!", width / 2, height / 2);
  text("Score: " + score, width / 2, height / 2 + 40);
  gameover = true;
  noLoop(); // Stop de gameloop
}
