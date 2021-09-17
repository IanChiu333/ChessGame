class GameObject {
  RowCol position;
  PImage sprite;
  boolean side;
  ArrayList<RowCol> possMoves = new ArrayList<RowCol>();
  public GameObject(int row, int col, PImage sprite1, PImage sprite2, boolean side) {
    position = new RowCol(row, col);
    if (side == true) {
      this.sprite = sprite1;
    } else {
      this.sprite = sprite2;
    }
    this.side = side;
    chessBoard[row][col] = this;
  }
  public void show() {
    image(sprite, position.col*100, position.row*100, 100, 100);
  }
  public boolean mouseHover() {
    if (mouseX > position.col * 100 && mouseX < position.col * 100 + 100 && mouseY > position.row * 100 && mouseY < position.row*100 + 100) {
      return(true);
    } else {
      return(false);
    }
  }
  public boolean clicked() {
    if (mouseHover() == true && mousePressed == true) {
      return(true);
    } else {
      return(false);
    }
  }
  public void loop() {
    show();
    if (mouseHover() == true) {
      drawPossMoves();
    }
  }

  public void drawPossMoves() {
    movement();
    for (int i = 0; i < possMoves.size(); i++) {
      fill(255, 255, 0, 100);
      rect(possMoves.get(i).col*100, possMoves.get(i).row*100, 100, 100);
    }
  }

  public void selectMove() {
    for (int i = 0; i < possMoves.size(); i++) {
      if (mouseX > possMoves.get(i).col*100 && mouseX < possMoves.get(i).col*100 + 100 && mouseY > possMoves.get(i).row*100 && mouseY < possMoves.get(i).row*100 + 100 && mousePressed == true) {
        chessBoard[position.row][position.col] = null;
        position = possMoves.get(i);
        chessBoard[position.row][position.col] = this;
      }
    }
  }
  public void movement() {
    print("This should not run");
  }
}
class RowCol {
  int row, col;
  public RowCol(int row, int col) {
    this.row = row;
    this.col = col;
  }
}
