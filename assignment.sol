pragma solidity ^0.4.0;
contract clothsContract {
    
    uint public b_ID;
    uint256 public quantity;
    address public Threads;
    address public Beach;
    string message;
    
    modifier beach()
   {
        require (msg.sender == Beach);
        _ ;
    }
    
    modifier threads()
    {
        require (msg.sender == Threads);
        _ ;
    }
   
    constructor  (uint vid) public payable {
        b_ID = vid;
        Threads=msg.sender;
        
    }
    
    function acceptQuantity(uint256 cvalue, uint vidd) public {
	    
	    require(b_ID == vidd);
    	quantity = cvalue;
    	Beach = msg.sender;
	}

    function requestPayment(string memory _msg) public beach {
        message = _msg;
    }

    
    function pay() public view returns(string memory){
        return message;

    }

   }