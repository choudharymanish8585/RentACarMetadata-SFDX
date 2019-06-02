@isTest(seeAllData=false)
public class CarSearchControllerTest {
	
    @isTest
    public static void getCars(){
        List<Car_Type__c> cts = RentACarTestFactory.createCarTypes(new List<String>{'Sports', 'Luxury'});
        System.assert(cts.size() == 2);
        
        List<Contact> contacts = RentACarTestFactory.createContacts(new List<String>{'Manish'});
        System.assert(contacts.size() == 1);
        
        List<Car__c> cars = RentACarTestFactory.createCars(3, cts[0], contacts.get(0));
        System.assert(cars.size() == 3);
        
        cars = null;
        cars = CarSearchController.getCars('');
        System.assert(cars.size() == 3);
        
        cars = null;
        cars = CarSearchController.getCars(cts[1].id);
        System.assert(cars.size() == 0);
        
    }
}