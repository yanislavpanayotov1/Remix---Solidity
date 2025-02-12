// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Struct{
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping (address => Car[]) public carsByOwner;
    function examples() external {
        Car memory toyota = Car("Camry", 1990, msg.sender);

        Car memory lambo = Car({model: "Lambo", year: 1980, owner: msg.sender});

        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);

        cars.push(Car("Ferrari", 2020, msg.sender));

        Car storage _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;

        delete _car.owner;

        delete cars[1];
    }
}