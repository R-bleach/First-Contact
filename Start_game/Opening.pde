int openingScene;
int timer;
void opening() {
  if(frameCount%1 == 0)
  timer ++;
  if (openingScene == 0)
     image(Opening1,0,0);
  if (openingScene == 1)
    image(Opening2,0,0);
  if (openingScene == 2)
    image(Opening3,0,0);
  if (openingScene ==3)
    image(Opening4,0,0);
  if (openingScene == 3){
    GameLoop = true;}
  nextScene();
}
void nextScene() {
  if(timer == 120){
      timer = 0;
      openingScene ++;
  }
    }
