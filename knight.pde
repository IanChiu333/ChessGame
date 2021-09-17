class Knight extends GameObject {
  public Knight(int row, int col, boolean side) {
    super(row, col, bKnight, wKnight, side);
  }
  public void movement() {
    possMoves = new ArrayList<RowCol>();
    possMoves.add(new RowCol(position.row+2, position.col+1));
    possMoves.add(new RowCol(position.row+2, position.col-1));
    possMoves.add(new RowCol(position.row+1, position.col+2));
    possMoves.add(new RowCol(position.row+1, position.col-2));
    possMoves.add(new RowCol(position.row-2, position.col+1));
    possMoves.add(new RowCol(position.row-2, position.col-1));
    possMoves.add(new RowCol(position.row-1, position.col+2));
    possMoves.add(new RowCol(position.row-1, position.col-2));
  }
}
