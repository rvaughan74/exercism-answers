public class ElonsToyCar {

    private int distance;
    private int battery;
    private final int driveDistance = 20;
    private final int driveBatteryDrain = 1;

    public ElonsToyCar() {

        this.distance = 0;
        this.battery = 100;
    }

    public static ElonsToyCar buy() {

        return new ElonsToyCar();
    }

    public String distanceDisplay() {

        return "Driven " + this.distance + " meters";
    }

    public String batteryDisplay() {

        String result = "Battery at " + this.battery + "%";

        if (this.battery == 0) {

            result = "Battery empty";
        }

        return result;
    }

    public void drive() {

        if (this.battery > 0) {

            this.distance += driveDistance;
            this.battery -= driveBatteryDrain;
        }
    }

    public void charge() {

        if (this.battery < 100) {

            this.battery += driveBatteryDrain;
        }
    }
}
