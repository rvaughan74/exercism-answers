using System;

static class AssemblyLine {
    const int BASE_RATE = 221;
    const double success1 = 1;
    const double success2 = 0.9;
    const double success3 = 0.8;
    const double success4 = 0.77;

    public static double ProductionRatePerHour(int speed) {

        double result = (BASE_RATE * speed);
        if (speed >= 1 && speed <= 4) {
            result *= success1;
        } else if (speed >= 5 && speed <= 8) {
            result *= success2;
        } else if (speed == 9) {
            result *= success3;
        } else if (speed == 10) {
            result *= success4;
        }

        return result;
    }

    public static int WorkingItemsPerMinute(int speed) {

        double hourly = ProductionRatePerHour(speed);
        int per_minute = (int)(hourly / 60);
        return per_minute;
    }
}
