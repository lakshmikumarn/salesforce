trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Opportunity> opts = Trigger.New;
    List<Task> tasks = new List<Task>();
    
    for(Opportunity opt: opts){
        if(opt.StageName == 'Closed Won' ){
            Task tsk = new Task(Subject='Follow Up Test Task');
            tasks.add(tsk);
            tsk.WhatId = opt.Id;
         }
    }
    if (tasks.size() > 0){
        insert tasks;
    }

}