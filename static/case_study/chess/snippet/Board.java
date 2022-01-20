public class Board {
    // Grid which chess is played on
    private Square[][] grid;

    /**
     * Checks every enemy move to see if it could hit square
     */
    public boolean isUnderAttack(Square square, boolean victimIsWhite) {
        // List of current enemy moves
        List<Move> enemyMoves = new ArrayList<Move>();

        // Goes through each enemy figure and adds all of its valid moves
        for (int h = 0; h < 8; h++) {
            for (int v = 0; v < 8; v++) {
                Figure piece = grid[h][v].getFigure();
                if (piece != null && piece.isWhiteFigure() != victimIsWhite
                        && piece.getAllMoves(Move.ATTACKABLE_SQUARES) != null) {
                    enemyMoves.addAll(piece.getAllMoves(Move.ATTACKABLE_SQUARES));
                }
            }
        }

        // Check to see if square is under attack by one of the enemy moves
        boolean isUnderFire = false;
        for (Move move : enemyMoves) {
            if (!isUnderFire && move.getDestination().equals(square)) {
                isUnderFire = true;
            }
        }
        return isUnderFire;
    }
}