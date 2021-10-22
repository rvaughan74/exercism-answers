using System;

static class LogLine {
    public static string Message(string logLine) {

        string[] parts = logLine.Split(":");
        return parts[1].Trim();
    }

    public static string LogLevel(string logLine) {

        string[] parts = logLine.Split(":");
        string result = parts[0];
        result = result.Replace("[", " ");
        result = result.Replace("]", " ");
        return result.Trim().ToLower();
    }

    public static string Reformat(string logLine) {

        string msg = Message(logLine);
        string lvl = LogLevel(logLine);
        return msg + " (" + lvl + ")";
    }
}
