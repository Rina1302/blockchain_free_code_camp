// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //current version of solidity

contract SimpleStorage{
    uint public favoriteNumber;
     mapping(string => uint256) public nameToFavoriteNumber;
     function store(uint _favoriteNumber) public{
    favoriteNumber =  _favoriteNumber;

    }
    // as we use view and pure the gas doesnt get used
    function retrive() public view returns(uint){
      return  favoriteNumber;

    }

    
    People  public person = People({favoriteNumber:13 ,name:"Rina" });
    struct People  {
        uint favoriteNumber;
        string name;


    }
      //array
    People[] public people ;

    uint luckyNumber;
    function num(uint _luckyNumber) public {
      luckyNumber = _luckyNumber;
    }
    function retrive1() public view returns(uint){
      return  luckyNumber;
    }

    function addPerson(string memory _name , uint  _favoriteNumber)  public{
     People memory newPerson = People({ favoriteNumber : _favoriteNumber , name : _name});
     people.push(newPerson);
     nameToFavoriteNumber[_name] = _favoriteNumber;
      // same as above 
      // People memory newPerson = People(_favoriteNumber ,  _name});

      //no need to create the new person 
    //  people.push(People(_favoriteNumber ,  _name));

    // call data memory storage 

    // mapping 
   
     
    }
}
