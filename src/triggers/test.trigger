trigger test on Lead (before update) {
   for (Lead Id: trigger.new)
   {
  	if(Id.Email != trigger.oldMap.get(Id.id).email)
  	{
     	Id.email = trigger.oldMap.get(Id.id).email;
     	Update Id;
  	}
   }
}