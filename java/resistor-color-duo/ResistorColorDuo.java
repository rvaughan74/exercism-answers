import java.util.ArrayList;
import java.util.Arrays;

class ResistorColorDuo {

    private final String COLORS[] = { "black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey",
            "white" };

    int value(String[] colors) {

        int inLength = colors.length;

        if (inLength > 2) {

            inLength = 2;
        }

        String result = "";
        ArrayList colorList = new ArrayList<String>(Arrays.asList(COLORS));

        for (int i = 0; i < inLength; i++) {

            result += Integer.toString(colorList.indexOf(colors[i]));
        }

        return Integer.parseInt(result);
    }
}
