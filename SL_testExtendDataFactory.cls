@isTest
public class SL_testExtendDataFactory extends SL_TestDataFactoryNew{
    
    @isTest
    public static void testMethod1(){
        Lead newLead = (Lead) SL_testExtendDataFactory.createSObject(new Lead(), 'SL_testExtendDataFactory.LeadDefaults2', true);
        List<Opportunity> oppList = (LIst<Opportunity>) SL_TestDataFactoryNew.createSObjectList(new Opportunity(), 5, 'SL_TestDataFactoryNew.OpportunityDefaults', true);
    }
    
    public class LeadDefaults2 implements FieldDefaults {
        public Map<Schema.SObjectField, Object> getFieldDefaults() {
            return new Map<Schema.SObjectField, Object> {
                Lead.FirstName => 'JohNew',
                Lead.LastName => 'DoeNew',
                Lead.Status => 'Inquiry',
                Lead.Email => 'lead2@silverlinecrm.test',
                Lead.Company => 'Test'
            };
        }    
    }
    
}