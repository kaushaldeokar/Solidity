// Etherum Virtual Machine EVM
// Etherum , Polygon , Arbitrum , Optimism , Zksync

// Learning SimpleSmartContracts
// 1. build contracts and compare with other language to solidity
// 2. Deploy Smart contracts over testnet and use real etherum



// SPDX-License-Identifier: MIT

//stating version
pragma solidity ^0.8.18;

contract SimpleStorage{

    uint public favNum; // 0

    uint256[] list_of_NUM;

    struct Person{
        uint256 myFav_NUM;
        string name;
    }

    // Person public kush = Person(89,"kaushal");
    // Person public Pat = Person( { myFav_NUM : 12 , name : "p" } );
    // Person Mic = Person( { myFav_NUM : 13 , name : "m" } );

    // dynamic array //
    Person[] public list_of_persons;

    function store(uint fav)public {
        favNum=fav;
    }

    // for no transction - view , pure (Cost only applies when called by a contract) // this function should not include any change of state
    function retrive() public view returns(uint){
        return favNum ;
    }


    // maps in solidity//

    mapping (string => uint256) public nameToFav;

    function addPeople(string memory _name , uint256 favNumber)public{
        list_of_persons.push(Person(favNumber,_name));
        nameToFav[_name]=favNumber;
    }

    function enter_name_and_get_favNum(string memory _name) public view returns(uint256){
        return nameToFav[_name];
    }





}