pragma solidity ^0.8.0;

// Step 1
// Paentvehicle contract creation

contract parentvehicle{

    

    function Start ()  pure public returns (string memory)  {
        string memory a=  "The vehicle has just started";
        return a;
    }
    
    function Accelerate () pure public returns (string memory ){
        string memory b = "The vehicle has just accelerated";
        return b;
    }
    
    function Stop () public pure returns (string memory){
        string memory c =  "The vehicle has just stopped";
        return c;
    }
    
    function Service () public pure virtual returns (string memory) {
        string memory d = "The vehicle is being serviced";
        return d;
    }
}

// Step 2
// Child contracts creation

contract Car is parentvehicle{
function Service() public pure override virtual returns(string memory){
    string memory d= "The Car is being serviced";
    return d;
}
}

contract Motorcycle is parentvehicle{
    function Service() public pure override virtual returns(string memory){
    string memory d= "The motorcycle is being serviced";
    return d;
}
}
contract Truck is parentvehicle{
    function Service() public pure override virtual returns(string memory){
    string memory d =  "The truck is being serviced";
    return d;
}
}

//  Step 3
// Child contract creation

contract Alto is Car{
    function Service() public pure override virtual returns(string memory){
    string memory d = "The AltoMehran car is being serviced";
    return d;
}
}

contract Hino is Truck{
       function Service() public pure override returns(string memory){
    string memory d=  "The Hino truck is being serviced";
    return d;
}
}
contract Yamaha is Motorcycle{
        function Service() public pure override virtual returns(string memory){
    string memory d= "The Yamaha motorcycle is being serviced";
    return d;
}
    
}

// Step 4
// Service Station creation
contract serviceStationCar {
    function Service(address adr) public pure returns(string memory ) {
       Car d = Car(adr);
       return d.Service();
    }
}

contract serviceStationTruck{
     function Service(address adr) public pure returns(string memory ) {
           Truck d = Truck(adr);
       return d.Service();
    }
}
contract serviceStationMotorCycle{
     function Service(address adr) public pure returns(string memory ) {
         Truck d = Truck(adr);
       return d.Service();
    }
    
    
}





