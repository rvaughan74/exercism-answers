class AnnalynsInfiltration {
    public static boolean canFastAttack(boolean knightIsAwake) {
        return !knightIsAwake;
    }

    public static boolean canSpy(boolean knightIsAwake, boolean archerIsAwake, boolean prisonerIsAwake) {
        return knightIsAwake || archerIsAwake || prisonerIsAwake;
    }

    public static boolean canSignalPrisoner(boolean archerIsAwake, boolean prisonerIsAwake) {
        return prisonerIsAwake && !archerIsAwake;
    }

    public static boolean canFreePrisoner(boolean knightIsAwake, boolean archerIsAwake, boolean prisonerIsAwake,
            boolean petDogIsPresent) {
        boolean guarded = knightIsAwake || archerIsAwake;
        if (petDogIsPresent) {
            if (archerIsAwake) {
                return false;
            }
            return true;
        } else {
            if (guarded) {
                return false;
            } else {
                if (prisonerIsAwake) {
                    return true;
                }
                return false;
            }
        }
    }
}
