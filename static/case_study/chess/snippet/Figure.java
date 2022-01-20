public abstract class Figure {
    // The colour of the figure in boolean
    private boolean whiteFigure;

    // The letter for each figure
    private String code;

    // Is the figure required to not lose (king)
    private boolean isImportant;

    // The score for the figure, used to find which turns are best
    private int score;

    public Figure(boolean whiteFigure, String code, boolean isImportant, int score) {
        this.whiteFigure = whiteFigure;
        this.code = code;
        this.isImportant = isImportant;
        this.score = score;
    }

    /**
     * Different for each figure, will return a list of moves that include
     * everything (including invalids, etc.)
     */
    protected abstract List<Move> getAllPossibilities();
}