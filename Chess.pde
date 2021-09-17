GameObject[][] chessBoard = new GameObject[8][8];
PImage bPawn, wPawn, bRook, wRook, bKnight, wKnight, bBishop, wBishop, bKing, wKing, bQueen, wQueen;
GameObject blackPawn;
GameObject blackKnight;
GameObject blackRook;
GameObject blackBishop;
GameObject blackQueen;
GameObject blackKing;
GameObject whitePawn;
GameObject whiteKnight;
GameObject whiteRook;
GameObject whiteBishop;
GameObject whiteQueen;
GameObject whiteKing;
GameObject selectedPiece;

void setup() {
  size(800, 800);
  bPawn = loadImage("chess/black_pawn.png");
  wPawn = loadImage("chess/white_pawn.png");
  bRook = loadImage("chess/black_rook.png");
  wRook = loadImage("chess/white_rook.png");
  bKnight = loadImage("chess/black_knight.png");
  wKnight = loadImage("chess/white_knight.png");
  bBishop = loadImage("chess/black_bishop.png");
  wBishop = loadImage("chess/white_bishop.png");
  bKing = loadImage("chess/black_king.png");
  wKing = loadImage("chess/white_king.png");
  bQueen = loadImage("chess/black_queen.png");
  wQueen = loadImage("chess/white_queen.png");
  //True = black
  //False = white
  blackKnight = new Knight(0, 1, true);
  new Knight(0, 6, true);
  blackRook = new Rook(0, 0, true);
  new Rook(0, 7, true);
  blackBishop = new Bishop(0, 2, true);
  new Bishop(0, 5, true);
  blackQueen = new Queen(0, 3, true);
  blackKing = new King(0, 4, true);
  whiteKnight = new Knight(7, 1, false);
  new Knight(7, 6, false);
  whiteRook = new Rook(7, 0, false);
  new Rook(7, 7, false);
  whiteBishop = new Bishop(7, 2, false);
  new Bishop(7, 5, false);
  whiteQueen = new Queen(7, 3, false);
  whiteKing = new King(7, 4, false);
  for (int i=0; i < 8; i++) {
    new Pawn(1, i, true);
    new Pawn(2, i, false);
  }
}

void draw() {
  drawBoard();
  selectPiece();
  if (selectedPiece != null) {
    selectedPiece.drawPossMoves(); 
    selectedPiece.selectMove();
  }
}

void drawBoard() {
  int counter = 0;
  for (int row=0; row<8; row++) {
    for (int col=0; col<8; col++) {
      if (counter%2 == 1) {
        fill(0);
      } else {
        fill(255);
      }
      counter+=1;
      square(col*100, row*100, 100);
    }
    counter+=1;
  }
  for (int row=0; row<8; row++) {
    for (int col=0; col<8; col++) {
      if (chessBoard[row][col] != null) {
        chessBoard[row][col].loop();
      }
    }
  }
}

void selectPiece() {
  for (int row=0; row<8; row++) {
    for (int col=0; col<8; col++) {
      if (chessBoard[row][col] != null) {
        if (chessBoard[row][col].clicked() == true) {
          selectedPiece = chessBoard[row][col];
        }
      }
    }
  }
}
