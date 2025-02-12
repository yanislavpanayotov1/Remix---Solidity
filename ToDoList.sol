// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ToDoList{
    struct ToDo{
        string text;
        bool completed;
    }
    ToDo[] public todos;

    function create(string calldata _text) external {
        todos.push(ToDo({text: _text, completed: false}));
    }
    function updateText(uint _index, string calldata _text) external {
        todos[_index].text = _text;
    } 
    function get(uint _index) external view returns (string memory, bool){
        ToDo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }
    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}