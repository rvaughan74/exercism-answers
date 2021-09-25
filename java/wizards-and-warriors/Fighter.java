abstract class Fighter {

    boolean isVulnerable() {
        throw new UnsupportedOperationException("Please provide implementation for this method");
    }

    abstract int damagePoints(Fighter fighter);

}

class Warrior extends Fighter {

    private static int TARGET_VULNERABLE = 10;
    private static int TARGET_NOT_VULNERABLE = 6;

    @Override
    public String toString() {

        return "Fighter is a Warrior";
    }

    @Override
    int damagePoints(Fighter wizard) {

        if (wizard.isVulnerable()) {
            return TARGET_VULNERABLE;
        }
        else {
            return TARGET_NOT_VULNERABLE;
        }
    }

    @Override
    boolean isVulnerable() {
        return false;
    }
}

class Wizard extends Fighter {

    private boolean spellPrepared;
    private static int PREPARED_DMG = 12;
    private static int UNPREPARED_DMG = 3;

    public Wizard() {
        this.spellPrepared = false;
    }

    @Override
    boolean isVulnerable() {
        return !this.spellPrepared;
    }

    @Override
    int damagePoints(Fighter warrior) {

        if (this.isVulnerable()) {

            return UNPREPARED_DMG;
        }
        else {

            return PREPARED_DMG;
        }
    }

    void prepareSpell() {
        this.spellPrepared = true;
    }

}
