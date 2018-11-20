public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer numC, String lastName){
        
        List<Contact> cList = new List<Contact>();
        
        for(Integer i=0;i<numC;i++){
            Contact c = new Contact(FirstName='Test-'+ i, LastName=lastName);
            cList.add(c);
        }
        return cList;
    }

}