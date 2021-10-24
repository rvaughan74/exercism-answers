import java.math.BigInteger;

class Grains {

    BigInteger grainsOnSquare(final int square) {
        // throw new UnsupportedOperationException("Delete this statement and write your
        // own implementation.");
        if (square > 64 || square <= 0) {

            // Invalid square
            throw new IllegalArgumentException("square must be between 1 and 64");
        }

        return new BigInteger("2").pow(square - 1);
    }

    BigInteger grainsOnBoard() {
        // throw new UnsupportedOperationException("Delete this statement and write your
        // own implementation.");

        BigInteger total = new BigInteger("0");

        for (int i = 0; i < 64; i++) {
            total = total.add(new BigInteger("2").pow(i));
        }

        return total;
    }

}
