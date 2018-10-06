import ketai.ui.*;
timer timebegin, draw_once, draw_twice, del_once, del_twice, close ;
KetaiVibrate vibe;

void setup() {
  fullScreen();
  orientation(PORTRAIT);
  textSize(24*displayDensity);
  textAlign(CENTER);
  text("Starts", width/2, height/3);
  vibe = new KetaiVibrate(this);
  timebegin = new timer(180);
  draw_once = new timer(20);
  draw_twice = new timer(8+10);
  del_once = new timer(8+20);
  del_twice = new timer(1+5);
  close = new timer(1+10);


  vibe.vibrate(1000);
}

void draw() {
  background(0);
  stroke(225);
  if (timebegin.get_time() != 0) {
    background(0);
    text(timebegin.get_time(), width/2, height/2);
    timebegin.count_down();
  }
  if (timebegin.get_time() == 0) {
    background(0);
    text(draw_once.get_time(), width/2, height/2);
    draw_once.count_down();
  }
  if (draw_once.get_time() == 0) {
    background(0);
    text(draw_twice.get_time(), width/2, height/2);
    draw_twice.count_down();
  }
  if (draw_twice.get_time() == 0) {
    background(0);
    text(del_once.get_time(), width/2, height/2);
    del_once.count_down();
  }
  if (del_once.get_time() == 0) {
    background(0);
    text(del_twice.get_time(), width/2, height/2);
    del_twice.count_down();
  }
  if (del_twice.get_time() == 0) {
    background(0);
    text(close.get_time(), width/2, height/2);
    close.count_down();
  }
}
