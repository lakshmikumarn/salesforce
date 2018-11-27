global with sharing class AccountWebservice {
    
    webservice static Account getAccount(String id){
        Account act = [select name from account where id = :id];
        System.debug('Account returned ' + act);
        System.debug('Changed in VSCode');
        System.debug('second update in feature2);
        return act;
    }

}
