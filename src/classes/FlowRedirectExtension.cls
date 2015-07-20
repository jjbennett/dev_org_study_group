Public class FlowRedirectExtension{
    Public Flow.Interview.RedirectFlow redirectTo {get; set;}

    public FlowRedirectExtension(ApexPages.StandardController stdController) {
    }

    Public PageReference getFinishLocation(){
        String finishLocation;
        if(redirectTo != null) {
            finishLocation = (string) redirectTo.getVariableValue('vFinishLocation');
        }
        PageReference send = new PageReference('/' + finishLocation);
        send.setRedirect(true);
        return send;
    }
}