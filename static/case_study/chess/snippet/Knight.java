public class Knight extends Figure {
   public Knight( boolean whiteFigure ) {
      super( whiteFigure, "N", false, 2 );
   }

   @Override
   protected List<Move> getAllPossibilities() {
      Board board = Board.getBoard();
      Square currentSquare = board.whereAmI( this );

      List<Move> possibilities = new ArrayList<Move>();
      addIfOnBoard( possibilities, board.getNextSquare( currentSquare, 1, 2 ) ); // Up-Up-Right
      addIfOnBoard( possibilities, board.getNextSquare( currentSquare, -1, 2 ) ); // Up-Up-Left
      addIfOnBoard( possibilities, board.getNextSquare( currentSquare, 2, 1 ) ); // Up-Right-Right
      addIfOnBoard( possibilities, board.getNextSquare( currentSquare, -2, 1 ) ); // Up-Left-Left
      addIfOnBoard( possibilities, board.getNextSquare( currentSquare, 1, -2 ) ); // Down-Down-Right
      addIfOnBoard( possibilities, board.getNextSquare( currentSquare, -1, -2 ) ); // Down-Down-Left
      addIfOnBoard( possibilities, board.getNextSquare( currentSquare, 2, -1 ) ); // Down-Right-Right
      addIfOnBoard( possibilities, board.getNextSquare( currentSquare, -2, -1 ) ); // Down-Left-Left
      return possibilities;
   }
}