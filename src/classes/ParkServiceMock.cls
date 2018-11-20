global class ParkServiceMock implements WebserviceMock {
    
    global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send
        ParkService.byCountryResponse response_x 
            = new ParkService.byCountryResponse();
        String country = ((ParkService.byCountry)request).arg0;
        System.debug(' Requested Country ' + country);
        String[] parks =  new String[]{'park 1', 'park 2'};       
        
         response_x.return_x = parks;
        // end
        response.put('response_x', response_x); 
   }
    

}