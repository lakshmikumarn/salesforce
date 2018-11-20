({
    handleAddItem:function(component, event, helper){
        var addItem = event.getParam("item");
        console.log("Handle Add Items before insert:"+ addItem);
        this.createItem(component,addItem);
    },
    
    saveDBItem: function(component, newItem, callback){
       var action = component.get("c.saveItem");
       action.setParams({"campitem": newItem});
        if(callback){
            action.setCallback(this,callback);
        }
         
        $A.enqueueAction(action);
    },
    
	createItem  : function(component,newItem) {
        
      //  var newItem = component.get("v.newItem");
        this.saveDBItem(component, newItem, function(response){
            var state = response.getState();
            console.log("Create Item State: " + state );
            if(state == "SUCCESS"){
                var newItem = response.getReturnValue();
                //console.log("Create Item: " + JSON.stringify(newItem));
                var items = component.get("v.items");
                
                
                items.push(newItem);
                component.set("v.items", items);
                component.set("v.newItem",{'sobjectType':'Camping_Item__c',
                                           'Name': '',
                                           'Quantity__c': 0,
                                           'Price__c': 0,
                                           'Packed__c': false});
                
            } else{
                console.log("Callback:Save Item failed");
            }
        });
     },
    
    updateItem: function(component, newItem){
        this.saveDBItem(component,newItem);
    },
    
    
    doInit : function(component, event, helper) {
        var action= component.get("c.getItems");
       
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state == "SUCCESS"){
                component.set("v.items",response.getReturnValue());
                console.log("Items List " + JSON.stringify(response.getReturnValue()));
               
            }
            else{
                console.log("Failed with state " + state);
            }
        });
		$A.enqueueAction(action);
	}
})