public with sharing class EmailManager {

    public static void sendMail(String[] addresses, String[] subjects, String[] messages){
        Messaging.SingleEmailMessage[] emails = new Messaging.SingleEmailMessage[]{};
            for(Integer i= 0; i< addresses.size(); i++){
                Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                email.setToAddresses(new List<String> {addresses[i]});
                email.setSubject(subjects[i]);
                email.setPlainTextBody(messages[i]);
                emails.add(email);
            }
        Messaging.sendEmail(emails);
            
    }
}