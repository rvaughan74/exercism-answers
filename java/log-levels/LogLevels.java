public class LogLevels {

    /**
     * Return the message part of a logLine.
     * 
     * @param logLine
     * @return String
     */
    public static String message(String logLine) {

        String[] parts = logLine.split(":");
        String result = parts[1];
        return result.strip();
    }

    /**
     * Return the logLevel part of a logLine.
     * 
     * @param logLine
     * @return String
     */
    public static String logLevel(String logLine) {

        String[] parts = logLine.split(":");
        String result = parts[0];
        result = result.strip();
        result = result.substring(1, result.length() - 1);
        return result.toLowerCase();
    }

    /**
     * Reformat a logLine to the format "msg (logLevel)"
     * 
     * @param logLine
     * @return String
     */
    public static String reformat(String logLine) {
        String msg = message(logLine);
        String lvl = logLevel(logLine);
        return msg + " (" + lvl + ")";
    }
}
