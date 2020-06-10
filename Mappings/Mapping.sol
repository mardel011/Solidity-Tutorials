//YouTube: https://www.youtube.com/watch?v=tO3vVMCOts8&feature=youtu.be

pragma solidity ^0.5.11;

//Mapping
//Create a mapping
//Get value
//Set value
//Delete value

//notes: valid key types: address, uint, and bool
//notes: value types mapping: array of uint or another mapping

contract Mapping {
    mapping(address => uint) public myMap;
    
    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }
    
    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
    
    function remove(address _addr) public {
        delete myMap[_addr];
    }
}