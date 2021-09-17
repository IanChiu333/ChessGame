class Pawn extends GameObject {
  public Pawn(int row, int col, boolean side) {
    super(row, col, bPawn, wPawn, side);
  }
  public void movement() {
    possMoves = new ArrayList<RowCol>();
    if (side == true) {
      if (chessBoard[position.row+1][position.col] == null) {
        possMoves.add(new RowCol(position.row+1, position.col));
      }
      else if (chessBoard[position.row+1][position.col+1] != null && chessBoard[position.row+1][position.col+1].side != this.side) {
        possMoves.add(new RowCol(position.row+1, position.col+1));
      }
      else if (chessBoard[position.row+1][position.col-1] == null && chessBoard[position.row+1][position.col+1].side != this.side) {
        possMoves.add(new RowCol(position.row+1, position.col+1));
      }
    } else {
      if (chessBoard[position.row-1][position.col] == null) {
        possMoves.add(new RowCol(position.row-1, position.col));
      }
       else if (chessBoard[position.row-1][position.col+1] != null && chessBoard[position.row-1][position.col+1].side != this.side) {
        possMoves.add(new RowCol(position.row-1, position.col+1));
      }
      else if (chessBoard[position.row-1][position.col-1] == null && chessBoard[position.row-1][position.col+1].side != this.side) {
        possMoves.add(new RowCol(position.row-1, position.col+1));
      }
    }
  }
}

//Array out of bounds error - if on side it doesn't have diagonal
