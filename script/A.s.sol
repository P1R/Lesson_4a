// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;
import "forge-std/Script.sol"; // Import script lib
import "forge-std/Test.sol"; // For using emit
import "../src/A.sol";
contract Deployment is Script {
    function run() public {
        //Load key/unlock wallet. Use with caution if in production
        uint256 deployerPrivateKey = vm.envUint("DEPLOY_KEY");
        vm.startBroadcast(deployerPrivateKey);
        //Deploy contracts
        A contractA = new A();
        //Do some deployment logic
        uint256 x = 123;
        contractA.store(x);
        uint256 result = contractA.retrieve();
        contractA.store(1337);
        result = contractA.retrieve();
        vm.stopBroadcast();
    }
}
