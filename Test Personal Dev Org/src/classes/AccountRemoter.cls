global with sharing class AccountRemoter {
    public string theText ;
    public String accountName { get; set; }
    public static Account account { get; set; }
    public AccountRemoter() { } // empty constructor
    
    @RemoteAction
    global static Account getAccount(String accountName) {

    string theText= '%' + accountName + '%'; 
        account = [SELECT Id, Name, Phone, Type, NumberOfEmployees 
                   FROM Account WHERE Name = :accountName];
             return account;
    }
 
}