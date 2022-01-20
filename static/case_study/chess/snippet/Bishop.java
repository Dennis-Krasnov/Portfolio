public class Bishop extends Figure {
   public Bishop( boolean whiteFigure ) {
      super( whiteFigure, "B", false, 3 );
   }

   @Override
   protected List<Move> getAllPossibilities() {
      Board board = Board.getBoard();
      Square currentSquare = board.whereAmI( this );

      List<Move> possibilities = new ArrayList<Move>();
      addLineToList( possibilities, currentSquare, 1, 1 ); // Up-Right
      addLineToList( possibilities, currentSquare, -1, 1 ); // Up-Left
      addLineToList( possibilities, currentSquare, 1, -1 ); // Down-Right
      addLineToList( possibilities, currentSquare, -1, -1 ); // Down-Left
      return possibilities;
   }
}