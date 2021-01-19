
public with sharing class OpportunityFactory {
	
	public static List<Opportunity> createOpportunities(Integer numOpps){
		Account testAccount = new Account(Name = 'Test');
		insert testAccount;
		List<Opportunity> opportunities = new List<Opportunity>();
		for (Integer i = 0; i < numOpps; i++) {
			Opportunity opportunity = new Opportunity(Name = 'TestOpp ' + String.valueOf(i), Type = 'New Project',
										Amount = 10000, CloseDate = Date.today() + 1, StageName = 'Submit Project',
										AccountId = testAccount.Id);
			opportunities.add(opportunity);
			
		}
		return opportunities;
	}

}