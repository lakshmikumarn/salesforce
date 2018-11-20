({
	packItem : function(component, event, helper) {
		var btnclicked = event.getSource();
        var btnStatus = btnclicked.get("{!v.label}")
        component.set("item.packed__c","true");
        btnclicked.set("disabled",true);
	}
})