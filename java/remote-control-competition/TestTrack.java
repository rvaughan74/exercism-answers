import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class TestTrack {

    public static void race(RemoteControlCar car) {

        car.drive();
    }

    public static List<ProductionRemoteControlCar> getRankedCars(ProductionRemoteControlCar prc1,
            ProductionRemoteControlCar prc2) {

        List<ProductionRemoteControlCar> result = new ArrayList<ProductionRemoteControlCar>();

        result.add(prc1);
        result.add(prc2);

        result.sort(Comparator.naturalOrder());
        return result;
    }
}
