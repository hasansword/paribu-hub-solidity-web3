// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Structs{

    struct Car {
        string model;
        uint year;
        address owner;
    }

    //We can use struct defining state variable.
    Car public car;
    //We can also create an array of struct.
    Car[] public cars;
    //Or we can define a mapping from the owner to cars.
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car('Toyota', 1999, msg.sender);
        Car memory lambo = Car({model:'Lamborghini', year:2015, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Model 3";
        tesla.year = 2014;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        //Doing this is equivalent to init a car in memory and then pushing it into the cars array.
        cars.push(Car("Ferrari",2020,msg.sender));

        //If we want to modify struct date we use storage instead of memory.
        Car storage _car = cars[0];
        _car.year = 2000;
        delete _car.owner;
        
        delete cars[1];
    }

}