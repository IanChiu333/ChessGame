public class Queen extends GameObject {
  public Queen(int row, int col, boolean side) {
    super(row, col, bQueen, wQueen, side);
  }
  public void movement() {
    possMoves = new ArrayList<RowCol>();
    for (int i = 1; i < 8; i++) {
      if (position.row+i < chessBoard.length && position.col+i < chessBoard.length) {
        if (chessBoard[position.row+i][position.col+i] == null) {
          possMoves.add(new RowCol(position.row+i, position.col+i));
        } else {
          break;
        }
      }
    }
    for (int i = 1; i < 8; i++) {
      if (position.row+i < chessBoard.length && position.col-i > -1) {
        if (chessBoard[position.row+i][position.col-i] == null) {
          possMoves.add(new RowCol(position.row+i, position.col-i));
        } else {
          break;
        }
      }
    }
    for (int i = 1; i < 8; i++) {
      if (position.row-i > -1 && position.col+i < chessBoard.length) {
        if (chessBoard[position.row-i][position.col+i] == null) {
          possMoves.add(new RowCol(position.row-i, position.col+i));
        } else {
          break;
        }
      }
    }
    for (int i = 1; i < 8; i++) {
      if (position.row-i > -1 && position.col-i > -1) {
        if (chessBoard[position.row-i][position.col-i] == null) {
          possMoves.add(new RowCol(position.row-i, position.col-i));
        } else {
          break;
        }
      }
    }
    for (int i = 1; i < 8; i++) {
      if (position.row+i < chessBoard.length) {
        if (chessBoard[position.row+i][position.col] == null) {
          possMoves.add(new RowCol(position.row+i, position.col));
        } else {
          break;
        }
      }
    }
    for (int i = 1; i < 8; i++) {
      if (position.col-i > -1) {
        if (chessBoard[position.row][position.col-i] == null) {
          possMoves.add(new RowCol(position.row, position.col-i));
        } else {
          break;
        }
      }
    }
    for (int i = 1; i < 8; i++) {
      if (position.row-i > -1) {
        if (chessBoard[position.row-i][position.col] == null) {
          possMoves.add(new RowCol(position.row-i, position.col));
        } else {
          break;
        }
      }
    }
    for (int i = 1; i < 8; i++) {
      if (position.col+i < chessBoard.length) {
        if (chessBoard[position.row][position.col+i] == null) {
          possMoves.add(new RowCol(position.row, position.col+i));
        } else {
          break;
        }
      }
    }
  }
}
