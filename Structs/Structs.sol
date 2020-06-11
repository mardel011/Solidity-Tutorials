//YouTube: https://www.youtube.com/watch?v=kYBHq7EmFBc

pragma solidity ^0.5.12;

contract Todos {
    //Structs
    //create
    //read
    //update

    struct Todo {
        string text;
        bool completed;
    }   

    //notes: Public state variable
    Todo[] public todos;

    //notes: _text corresponds to string text (first argument) and false corresponds to bool completed (second argument).
    function create(string memory _text) public {
        todos.push(Todo(_text, false));
    }

    //notes: stored in a state variable
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    } 

    //update text
    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    //update completed
     function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
     }
}