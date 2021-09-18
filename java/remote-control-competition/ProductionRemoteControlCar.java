class ProductionRemoteControlCar implements RemoteControlCar, Comparable<ProductionRemoteControlCar> {
    private int distance;
    private int victories;
    private final int driveDistance = 10;

    public ProductionRemoteControlCar() {

        this.distance = 0;
        this.victories = 0;
    }

    public void drive() {

        this.distance += driveDistance;
    }

    public int getDistanceTravelled() {

        return this.distance;
    }

    public int getNumberOfVictories() {

        return this.victories;
    }

    public void setNumberOfVictories(int numberofFictories) {

        this.victories = numberofFictories;
    }

    public int compareTo(ProductionRemoteControlCar y) {

        return this.victories - y.getNumberOfVictories();
    }
}
