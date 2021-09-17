public class King extends GameObject {
  public King(int row, int col, boolean side) {
    super(row, col, bKing, wKing, side);
  }
  public void movement() {
    possMoves = new ArrayList<RowCol>();
    if (position.row+1 < chessBoard.length && position.col+1 < chessBoard.length) {
      if (chessBoard[position.row+1][position.col+1] == null) {
        possMoves.add(new RowCol(position.row+1, position.col+1));
      }
    }
    if (position.row+1 < chessBoard.length && position.col-1 > -1) {
      if (chessBoard[position.row+1][position.col-1] == null) {
        possMoves.add(new RowCol(position.row+1, position.col-1));
      }
    }
    if (position.row-1 > -1 && position.col+1 < chessBoard.length) {
      if (chessBoard[position.row-1][position.col+1] == null) {
        possMoves.add(new RowCol(position.row-1, position.col+1));
      }
    }
    if (position.row-1 > -1 && position.col-1 > -1) {
      if (chessBoard[position.row-1][position.col-1] == null) {
        possMoves.add(new RowCol(position.row-1, position.col-1));
      }
    }
    if (position.row+1 < chessBoard.length) {
      if (chessBoard[position.row+1][position.col] == null) {
        possMoves.add(new RowCol(position.row+1, position.col));
      }
    }
    if (position.col-1 > -1) {
      if (chessBoard[position.row][position.col-1] == null) {
        possMoves.add(new RowCol(position.row, position.col-1));
      }
    }
    if (position.row-1 > -1) {
      if (chessBoard[position.row-1][position.col] == null) {
        possMoves.add(new RowCol(position.row-1, position.col));
      }
    }
    if (position.col+1 < chessBoard.length) {
      if (chessBoard[position.row][position.col+1] == null) {
        possMoves.add(new RowCol(position.row, position.col+1));
      }
    }
  }
}
