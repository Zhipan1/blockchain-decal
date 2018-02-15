pragma solidity ^0.4.0;

contract Greeter {
    string greeting;

    function Greeter() public {
        greeting = 'hello, World!';
    }

    function greet() constant returns (string) {
        return greeting;
    }

    function updateGreeting(string newGreeting) returns (string) {
        greeting = newGreeting;
        return greet();
    }
}

contract Fib {
    uint a;
    uint b;

    function Fib() public {
        a = 0;
        b = 1;
    }

    function next() returns (uint) {
        uint prevA = a;
        a = b;
        b += prevA;

        return prevA;
    }
}

contract XOR {

    function XOR() public {}

    function calc(string a, string b) returns (bool) {
        return sha3(a) != sha3(b);
    }
}

contract Concat {

    function Concat() public {}

    function concat(string a, string b) returns (string) {
        bytes memory _ba = bytes(a);
        bytes memory _bb = bytes(b);
        bytes memory newString = bytes(new string(_ba.length + _bb.length));
        for (uint i = 0; i < _ba.length; i++) newString[i] = _ba[i];
        for (i = 0; i < _bb.length; i++) newString[i + _ba.length] = _bb[i];

        return string(newString);

    }
}
