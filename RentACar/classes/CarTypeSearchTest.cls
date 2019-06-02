@isTest(seeAllData=false)
public class CarTypeSearchTest {
	
    @isTest
    public static void getCarTypes(){
        List<String> carTypeNames = new List<String>{'Sports', 'Luxury'};
		RentACarTestFactory.createCarTypes(carTypeNames);
        
        List<Car_Type__c> cts = CarTypeSearch.getCarTypes();
        System.assert(cts.size() == 2);
    }
}