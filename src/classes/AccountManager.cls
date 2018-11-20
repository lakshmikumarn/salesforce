@RestResource(urlmapping='/Account/*/contacts')
global with sharing class AccountManager {
    
    @HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        String reqSubstr = request.requestURI;
        if (reqSubstr == null) throw new NullPointerException();
        String id = reqSubstr.substringBetween('/Accounts/' , '/contacts');
        if (id == null) throw new NullPointerException();
        Account act = [SELECT ID, NAME, (SELECT ID, NAME FROM CONTACTS) FROM ACCOUNT 
                       WHERE ID= :ID];
        return act;
    }

}