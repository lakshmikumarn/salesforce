@isTest
global class AccountManagerTest {
    
    @isTest(seealldata=true)
    static void testGetAccount(){
        String account_id = '0015A0000237yHLQAY';
        String uri = 'https://playful-bear-czzo1t-dev-ed.lightning.force.com/service/apexrest/Accounts/'+ Account_ID + '/contacts';
        RestRequest req = new RestRequest();
        req.requestURI = uri;
        req.httpMethod ='GET';
        RestContext.request = req;
        
        Account act = AccountManager.getAccount();
        System.assert(act!=null);
        
    }

}