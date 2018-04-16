pragma solidity ^0.4.8;
contract myContract{
    address host;
    address client;
    string host_name;
    string host_share_type;
    string date;
    uint no_of_units;
    uint cost_per_share;
    uint host_amount; 

    string client_name;
    uint client_amount;
    
    function setHost(address t)public{
        host=t;
    }
    function setClient(address t)public{
        client=t;
    }
    function setHost(string name,string htype,uint nou,uint cps,string curr_date) public
    {
        host_name = name;
        host_share_type = htype;
        no_of_units = nou;
        cost_per_share = cps;
        date = curr_date;
        host_amount = (no_of_units*cost_per_share); 
    }
    
    function setClient(string cname,uint camt) public
    {
        client_name = cname;
        client_amount = camt;
    }
    
    function checkTransaction() public constant returns(bool)
    {
       
        
        if(host_amount == client_amount)
        return true;
        else
        return false;
    }
    
    
    function returnHost() public constant returns(address){
        return host;
    }
    function returnClient() public constant returns(address){
        return client;
    }
    
    function hostDetails() public constant returns(string,string,uint,uint,string,uint){
      return (host_name,host_share_type,no_of_units,cost_per_share,date,host_amount);  
    }
    
    function clientDetails() public constant returns(string,uint){
        return (client_name,client_amount);
        
    }
    
    function () public payable{
        
    }
    
}