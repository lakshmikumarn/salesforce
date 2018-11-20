@isTest

public class TestRestrictContactByName {
    
    @isTest static void testContactName(){
        
       
        Contact ci = new Contact(FirstName='Laks',LastName='INVALIDNAME');
        
        List<Contact> cu = getContacts();
        System.debug('List>>'+ cu);
        
        Contact c = new Contact();//cu.get(0);
        c = cu[0];
        if( cu.size() > 0){
            
       	    c.LastName = 'INVALIDNAME';
        }
        	
        Test.startTest();
          Database.SaveResult resultI =   Database.insert(ci,false);
         // Database.SaveResult resultU =   Database.update(c,false);
        Test.stopTest();
        
        System.assert(!resultI.isSuccess());
        //System.assert(!resultU.isSuccess());
    }
    
    public static List<Contact> getContacts(){
        List<Contact> cu = [ SELECT id, FirstName, LastName FROM Contact WHERE LastName='Naray' LIMIT 1 ];
        System.debug('List>>'+ cu);
        return cu;
        
    }

}