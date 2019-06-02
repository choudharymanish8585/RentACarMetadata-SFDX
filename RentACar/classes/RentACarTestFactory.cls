public class RentACarTestFactory {

    public static List<Car_Type__c> createCarTypes(List<String> names){
        List<Car_Type__c> carTypes = new List<Car_Type__c>();
        for(String carTypeName : names){
            carTypes.add(new Car_Type__c(Name=carTypeName));
        }
        insert carTypes;
        return carTypes;
    }
    
    public static List<Contact> createContacts(List<String> names){
        List<Contact> contacts = new List<Contact>();
        for(String contactName : names){
            contacts.add(new Contact(LastName=contactName));
        }
        insert contacts;
        return contacts;
    }
    
    public static List<Car__c> createCars(Integer count, Car_Type__c ct, Contact con){
        List<Car__c> cars = new List<Car__c>();
        for(Integer i=0; i<count; i++){
            cars.add(new Car__c(Contact__c=con.id, Car_Type__c=ct.id, 
                               Per_Day_Rent__c = 100+i,
                               Build_Year__c =2000+i,
                               Name='Car'+i));
        }
        insert cars;
        return cars;
    }
    
}