class Lasagna {
    private const int TIME_IN_OVEN = 40;
    private const int LAYER_PREP_TIME = 2;

    /**
     * Returns the value of the constant TIME_IN_OVEN.
     * 
     * @return int: TIME_IN_OVEN
     */
    public int ExpectedMinutesInOven() {

        return TIME_IN_OVEN;
    }

    /**
     * Returns the amount of time left to cook.
     * 
     * @param timeCooking int: The time spent cooking so far.
     * @return int: TIME_IN_OVEN - timeCooking
     */
    public int RemainingMinutesInOven(int timeCooking) {

        return TIME_IN_OVEN - timeCooking;
    }

    /**
     * Returns the expected preparation time for layers number of layers.
     * 
     * @param layers int: The number of layers to prepare.
     * @return int: The total preparation time.
     */
    public int PreparationTimeInMinutes(int layers) {

        return layers * LAYER_PREP_TIME;
    }

    /**
     * Calculates the total time spent making the meal.
     * 
     * @param layers      int: The number of layers to make.
     * @param timeCooking int: The amount of time spent cooking so far.
     * @return int: Total time currently spent on making the meal.
     */
    public int ElapsedTimeInMinutes(int layers, int timeCooking) {

        return PreparationTimeInMinutes(layers) + timeCooking;
    }
}
