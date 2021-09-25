public class FootballMatchReports {
    public static String onField(int shirtNum) {

        /*
         * 1 -> "goalie" 2 -> "left back" 3 & 4 "center back" 5 -> "right back" 6, 7, &
         * 8 -> "midfielder" 9 -> "left wing" 10 -> "striker" 11 -> "right wing"
         */
        String result = "";
        switch (shirtNum) {

            case 1:

                result = "goalie";
                break;

            case 2:

                result = "left back";
                break;

            case 3:
            case 4:

                result = "center back";
                break;

            case 5:

                result = "right back";
                break;

            case 6:
            case 7:
            case 8:

                result = "midfielder";
                break;

            case 9:

                result = "left wing";
                break;

            case 10:

                result = "striker";
                break;

            case 11:

                result = "right wing";
                break;

            default:
                IllegalArgumentException iae = new IllegalArgumentException();
                throw iae;
            // break;
        }

        return result;
    }
}
