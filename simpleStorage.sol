// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating version

contract SimpleStorage{

    uint public favNum; // 0

    uint256[] list_of_NUM;

    struct Person{
        uint256 myFav_NUM;
        string name;
    }

    Person public kush = Person(89,"kaushal");

    function store(uint fav)public {
        favNum=fav;
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138


    // for no transction - view , pure (Cost only applies when called by a contract)
    // this function should not include any change of state

    function retrive() public view returns(uint){
        return favNum ;
    }



}