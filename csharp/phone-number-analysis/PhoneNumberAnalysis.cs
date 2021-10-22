using System;

public static class PhoneNumber {
    public static (bool IsNewYork, bool IsFake, string LocalNumber) Analyze(string phoneNumber) {

        string[] parts = phoneNumber.Split("-");
        (bool IsNewYork, bool IsFake, string LocalNumber) result = (false, false, parts[2]);
        result.IsNewYork = parts[0].Equals("212");
        result.IsFake = parts[1].Equals("555");

        return result;
    }

    public static bool IsFake((bool IsNewYork, bool IsFake, string LocalNumber) phoneNumberInfo) {

        return phoneNumberInfo.IsFake;
    }
}
