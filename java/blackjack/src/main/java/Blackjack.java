public class Blackjack {

    private static int BLACKJACK = 21;
    private static int ACE = 11;
    private static int TEN = 10;
    private static int NINE = 9;
    private static int EIGHT = 8;
    private static int SEVEN = 7;
    private static int SIX = 6;
    private static int FIVE = 5;
    private static int FOUR = 4;
    private static int THREE = 3;
    private static int TWO = 2;
    private static String STAND = "S";
    private static String HIT = "H";
    private static String SPLIT = "P";
    private static String WIN = "W";

    /**
     * Parse given card to its integer value (score).
     * 
     * @param card (String): The card to parse.
     * @return (int): Score of the card.
     */
    public int parseCard(String card) {

        int result = 0;

        switch (card) {

        case "ace":
            result = ACE;
            break;

        case "ten":
        case "jack":
        case "queen":
        case "king":
            result = TEN;
            break;

        case "nine":
            result = NINE;
            break;

        case "eight":
            result = EIGHT;
            break;

        case "seven":
            result = SEVEN;
            break;

        case "six":
            result = SIX;
            break;

        case "five":
            result = FIVE;
            break;

        case "four":
            result = FOUR;
            break;

        case "three":
            result = THREE;
            break;

        case "two":
            result = TWO;
            break;

        default:
            result = 0;
            break;
        }

        return result;
    }

    /**
     * Determine if the starting cards given are a blackjack.
     * 
     * @param card1 (String): First card in hand
     * @param card2 (String): Second card in hand
     * @return (boolean): True if blackjack found.
     */
    public boolean isBlackjack(String card1, String card2) {

        int value1 = parseCard(card1);
        int value2 = parseCard(card2);

        return (value1 + value2) == BLACKJACK;
    }

    /**
     * Large (20 or higher) hand logic.
     * 
     * @param isBlackjack (boolean): is the current hand a blackjack.
     * @param dealerScore (int): Value of shown card for the dealer.
     * @return (String): Action to take.
     */
    public String largeHand(boolean isBlackjack, int dealerScore) {

        if (isBlackjack) {

            if (dealerScore >= 10) {

                return STAND;
            }
            return WIN;
        }
        return SPLIT;
    }

    /**
     * Small (19 or less) hand logic.
     * 
     * @param handScore   (int): Value of the players current hand
     * @param dealerScore (int): Value of shown card for the dealer.
     * @return (String): Action to take.
     */
    public String smallHand(int handScore, int dealerScore) {

        String result = STAND;

        if (handScore >= 17) {

            result = STAND;
        }
        else if (handScore <= 11) {

            result = HIT;
        }
        else if (handScore >= 12 && handScore <= 16) {

            if (dealerScore >= 7) {

                result = HIT;
            }
            else {

                result = STAND;
            }
        }

        return result;
    }

    // FirstTurn returns the semi-optimal decision for the first turn, given the
    // cards of the player and the dealer.
    // This function is already implemented and does not need to be edited. It pulls
    // the other functions together in a
    // complete decision tree for the first turn.
    public String firstTurn(String card1, String card2, String dealerCard) {
        int handScore = parseCard(card1) + parseCard(card2);
        int dealerScore = parseCard(dealerCard);

        if (20 < handScore)
            return largeHand(isBlackjack(card1, card2), dealerScore);

        else
            return smallHand(handScore, dealerScore);
    }
}
