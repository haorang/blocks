pragma solidity ^0.4.0;

contract HelloWorld{
    
    string greeting;
    
    function HelloWorld(string _greeting) public {
        greeting = _greeting;
    }
    
    function greet() public constant returns (string) {
        return greeting;
    }
    
   
}

contract Fibonacci{
    
    uint256 index;
    
    function Fibonacci(uint256 i) public {
        index = i;
    }
    
    function fibonacci() public constant returns (uint256){
        uint256 curr = 1;
        uint256 prev = 0;
        uint256 counter = 1;
        while (counter < index){
            uint256 temp = curr;
            curr = prev+curr;
            prev = temp;
            counter++;
        }
        return curr;
    }
    
}

contract XOR{
    
    bool x;
    bool y;
    
    function XOR(bool _x, bool _y) public {
        x = _x;
        y = _y;
    }
    
    function xor() public constant returns (bool) {
        return (x != y);
    }
    
}

contract Concatenate{
    
    string x;
    string y;
    
    function Concatenate(string _x, string _y) public {
        x = _x;
        y = _y;
    }
    
    function concat() public constant returns (string) {
        bytes memory xx = bytes(x);
        bytes memory yy = bytes(y);
        string memory ab = new string(xx.length + yy.length);
        bytes memory bab = bytes(ab);
        uint k = 0;
        for (uint i = 0; i < xx.length; i++) bab[k++] = xx[i];
        for (i =0; i < yy.length; i++) bab[k++] = yy[i];
        return string(bab);
    }
    
}