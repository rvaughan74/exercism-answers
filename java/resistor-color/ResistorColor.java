import java.util.ArrayList;
import java.util.Arrays;

class ResistorColor {

    private final String COLORS[] = { "black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey",
            "white" };

    int colorCode(String color) {

        ArrayList colorList = new ArrayList<String>(Arrays.asList(COLORS));

        return colorList.indexOf(color);
    }

    String[] colors() {

        return COLORS;
    }
}
