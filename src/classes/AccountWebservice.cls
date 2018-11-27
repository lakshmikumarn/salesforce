global with sharing class AccountWebservice {
    
    webservice static Account getAccount(String id){
        Account act = [select name from account where id = :id];
        System.debug('Account returned ' + act);
        
        return act;
    }

}