public class CarsAssemble {

    static int BASE_RATE = 221; // Base rate at lowest speed.

    public double productionRatePerHour(int speed) {

        double success_rate = 0.0; // Success rate for the given speed
        switch (speed) {

            case 1:
            case 2:
            case 3:
            case 4:
                success_rate = 1.0;
                break;
            case 5:
            case 6:
            case 7:
            case 8:
                success_rate = 0.9;
                break;
            case 9:
                success_rate = 0.8;
                break;
            case 10:
                success_rate = 0.77;
                break;
        }

        return BASE_RATE * speed * success_rate;
    }

    public int workingItemsPerMinute(int speed) {

        return (int) (productionRatePerHour(speed) / 60); // 1 60th of the hourly rate cast to int.
    }
}
