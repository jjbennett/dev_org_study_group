public with sharing class OpportunityToAssetsFlowExtension {

    public final Flow.Interview.CreatAssetsFromOpportunity createAssetsFromOpp {get; set;}
    public final Id acctId;

    public OpportunityToAssetsFlowExtension(ApexPages.StandardController stdController) {
        this.acctId = (String)createAssetsFromOpp.getVariableValue('AcctId');
    }
    
    public PageReference getFinishLocation(){
        String finishLocation;
        if(acctId != null) {
            finishLocation = (String)AcctId;
        }
        PageReference send = new PageReference('/' + finishLocation);
        send.setRedirect(true);
        return send;
    }
}