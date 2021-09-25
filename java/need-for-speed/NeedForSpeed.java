class NeedForSpeed {

    private int speed, batteryDrain, distance, battery;
    private static final int nitroSpeed = 50;
    private static final int nitroDrain = 4;

    public NeedForSpeed() {

        this.distance = 0;
        this.battery = 100;
    }

    public NeedForSpeed(int speed, int batteryDrain) {

        this();
        this.speed = speed;
        this.batteryDrain = batteryDrain;
    }

    public boolean batteryDrained() {

        return this.battery <= 0;
    }

    public int distanceDriven() {

        return this.distance;
    }

    public int maxRangeLeft() {

        return (int) (this.speed * (this.battery / this.batteryDrain));
    }

    public void drive() {

        if (this.battery > 0) {

            this.distance += this.speed;
            this.battery -= this.batteryDrain;
        }
    }

    public static NeedForSpeed nitro() {

        return new NeedForSpeed(nitroSpeed, nitroDrain);
    }
}

class RaceTrack {

    private int distance;

    public RaceTrack(int distance) {

        this.distance = distance;
    }

    public boolean carCanFinish(NeedForSpeed car) {

        // while (!car.batteryDrained()) {
        // car.drive();
        // }

        // return car.distanceDriven() >= this.distance;

        return car.maxRangeLeft() >= this.distance;
    }
}
