pragma solidity ^0.8.4;

import "forge-std/Script.sol";
import "../src/Spacebear.sol"; 

contract SpacebearScript is Script {
  function setUp() public {}

  function run() public {
    uint256 privateKey = vm.envUint("PRIVATE_KEY");
    vm.startBroadcast(privateKey);
    Spacebear sb = new Spacebear();

    vm.stopBroadcast();
  }
}