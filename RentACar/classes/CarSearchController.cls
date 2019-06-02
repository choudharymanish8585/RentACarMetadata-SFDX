public with sharing class CarSearchController {
	
    @AuraEnabled(cacheable=true)
    public static List<Car__c> getCars(String carTypeId){
        //If 'All Type' selected on UI, below code will execute to get all cars
        if(carTypeId == null || carTypeId.equalsIgnoreCase('')){
        	return [SELECT id, Name, Picture__c, Contact__r.Name,
                    Geolocation__latitude__s, Geolocation__longitude__s
                    FROM Car__c 
                    WHERE Available_For_Rent__c = true ];
        } 
        
        //If any specific car type is selected on UI, below code will execute
        //to get all cars of that type
        else{
            //system.debug('SELECT id, Name, Picture__c FROM Boat__c WHERE id = :'+boatTypeId);
            return [SELECT id, Name, Picture__c, Contact__r.Name,
                    Geolocation__latitude__s, Geolocation__longitude__s
                    FROM Car__c 
                    WHERE Car_Type__c=: carTypeId 
                    AND Available_For_Rent__c = true];
        }
    }
    
    @AuraEnabled
    public static List<Car__c> getAllCars(){
        //If 'All Type' selected on UI, below code will execute to get all cars
        return [SELECT Id, Name, Picture__c, Contact__r.Name,
                    Build_Year__c , Per_Day_Rent__c , Mileage__c, Available_For_Rent__c,
                	Geolocation__latitude__s, Geolocation__longitude__s
                    FROM Car__c ];
    }
    
    @AuraEnabled
    public static List<Contact> getContacts(){
        List<Contact> contacts = new List<Contact>();
        for(Contact con : [SELECT Id, Name, Phone, Email, (Select Id, Name From Cars__r) From Contact]){
            for(Car__c car : con.Cars__r){
                contacts.add(con);
            }
        }
        return contacts;
    }
}