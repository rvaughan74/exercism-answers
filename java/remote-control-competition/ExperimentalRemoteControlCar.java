public class ExperimentalRemoteControlCar implements RemoteControlCar {
    private int distance;
    private final int driveDistance = 20;

    public ExperimentalRemoteControlCar() {

        this.distance = 0;
    }

    public void drive() {

        this.distance += driveDistance;
    }

    public int getDistanceTravelled() {

        return this.distance;
    }
}
