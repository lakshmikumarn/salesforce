public class ParkLocator {
    
    public static String[] country(String ccode){
        parkservice.ParksImplPort pi = new 
            parkservice.ParksImplPort();
        System.debug('Requested Country in Park Locator ' + ccode);
        String[] str =  pi.byCountry(ccode);
        System.debug('Country >> ' + str);
        return str;
    }
    
}