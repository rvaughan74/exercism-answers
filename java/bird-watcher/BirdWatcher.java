
class BirdWatcher {
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        this.birdsPerDay = birdsPerDay.clone();
    }

    public int[] getLastWeek() {

        return this.birdsPerDay;
    }

    public int getToday() {

        if (this.birdsPerDay.length > 0) {

            return this.birdsPerDay[this.birdsPerDay.length - 1];
        }

        return 0;
    }

    public void incrementTodaysCount() {

        if (this.birdsPerDay.length > 0) {

            this.birdsPerDay[this.birdsPerDay.length - 1]++;
        }
    }

    public boolean hasDayWithoutBirds() {

        boolean result = false;
        for (int i : birdsPerDay) {

            if (i == 0) {

                result = true;
            }
        }
        return result;
    }

    public int getCountForFirstDays(int numberOfDays) {

        int result = 0;

        for (int i = 0; i < numberOfDays && i < this.birdsPerDay.length; i++) {

            result += this.birdsPerDay[i];
        }

        return result;
    }

    public int getBusyDays() {

        int result = 0;
        for (int i : birdsPerDay) {

            if (i >= 5) {

                result++;
            }
        }
        return result;
    }
}
