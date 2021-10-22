using System;

public static class LogAnalysis {

    public static string SubstringAfter(this string log, string substring) {

        return log.Substring(log.IndexOf(substring) + substring.Length);
    }

    public static string SubstringBetween(this string log, string start, string end) {

        int start_pos = log.IndexOf(start) + start.Length;
        int end_pos = log.IndexOf(end);
        int len = end_pos - start_pos;
        return log.Substring(start_pos, len);
    }

    public static string Message(this string log) {

        return log.SubstringAfter(": ");
    }

    public static string LogLevel(this string log) {

        return log.SubstringBetween("[", "]");
    }
}