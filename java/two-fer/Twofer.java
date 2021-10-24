public class Twofer {
    public String twofer(String name) {
        // throw new UnsupportedOperationException("Delete this statement and write your
        // own implementation.");
        String who = "you";
        if (name != null) {
            who = name;
        }

        return "One for " + who + ", one for me.";
    }
}
