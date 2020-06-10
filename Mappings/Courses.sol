//YouTube: https://www.youtube.com/watch?v=gfXewa4xmYE

pragma solidity ^0.4.18;

contract Courses {
    
    struct Instructor {
        uint age;
        string fName;
        string lName;
    }
    //notes: The word "Instructor" below is for the struct Instructor
    mapping (address => Instructor) instructors;
    address[] public instructorAccts;
    
    function setInstructor(address _address, uint _age, string memory  _fName, string memory _lName) public {
        var instructor = instructors[_address];
        
        instructor.age = _age;
        instructor.fName = _fName;
        instructor.lName = _lName;
        
        instructorAccts.push(_address) -1;
    }
    
    function getInstructors() view public returns(address[]) {
        return instructorAccts;
    }
    
    function getInstructor(address _address) view public returns (uint, string, string) {
        return (instructors[_address].age, instructors[_address].fName, instructors[_address].lName);
    }
    
    function countInstructors() view public returns (uint) {
        return instructorAccts.length;
    }
}
