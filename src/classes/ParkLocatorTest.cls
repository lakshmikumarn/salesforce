@isTest
global class ParkLocatorTest {

    @isTest
    global static void testCountry(){
        ParkServiceMock  mock = new ParkServiceMock();
        Test.setMock(WebServiceMock.class, mock);
        ParkLocator.country('Germany');
    }
}