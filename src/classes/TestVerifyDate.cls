@isTest

private class TestVerifyDate {
    @isTest static void testCheckDates(){
      
        Date d1 = Date.newInstance(2018, 03, 04);
        Date d1a = Date.newInstance(2018, 02, 02);
        Date d1b = Date.newInstance(2018, 03, 05);
        Date d2 = d1.addDays(30);
        
        System.assertEquals(SetEndOfMonthDate(d1),VerifyDate.CheckDates(d1, d1a));
        System.assertEquals(SetEndOfMonthDate(d1),VerifyDate.CheckDates(d1, d2));
        System.assertEquals(d1b,VerifyDate.CheckDates(d1, d1b));
        
        
        
    }
    
    private static Date SetEndOfMonthDate(Date date1) {
		Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
		return lastDay;
	}

}