class timer {
  int count_down;
  int epoc = millis();

  timer(int count_down) {
    this. count_down = count_down;
  }

  void count_down_seconds() {

    int check = millis();


    if (check - epoc >= 1000) {
      count_down--;

      epoc = check;
    }
  }

  public void count_down() {

    if (count_down != 0) {
      count_down_seconds();

      if (count_down <= 2 && count_down > 0) vibe.vibrate(300);
    }
  }
  public int get_time() {
    return count_down;
  }
}
