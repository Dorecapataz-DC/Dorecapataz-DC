// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage{
    uint256 public myfavoriteNumber; // 0
    //unit256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public ListOfPeople; // []

    mapping(string => uint256) public nameToFavotiteNumber;

    function store(uint256 _favoriteNumber) public virtual {
       myfavoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns(uint256){
        return myfavoriteNumber;
    }
// calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
    Person memory newPerson = Person(_favoriteNumber, _name);
    ListOfPeople.push(newPerson);

   nameToFavotiteNumber[_name] = _favoriteNumber;
}
    }

    contract SimpleStorage2 {}
    contract SimpleStorage3 {}
    contract SimpleStorage4 {}


