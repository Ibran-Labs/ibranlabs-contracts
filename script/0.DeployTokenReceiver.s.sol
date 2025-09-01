// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {Helper} from "./Helper.sol";
import {IbranBridgeTokenReceiver} from "../src/IbranBridgeTokenReceiver.sol";
import {MockUSDC} from "../src/mocks/MockUSDC.sol";
import {MockUSDT} from "../src/mocks/MockUSDT.sol";
import {MockWBTC} from "../src/mocks/MockWBTC.sol";
import {MockWETH} from "../src/mocks/MockWETH.sol";
import {HelperMainnet} from "../src/HelperMainnet.sol";

contract DeployTokenReceiver is Script, Helper {
    MockUSDC public mockUSDC;
    MockUSDT public mockUSDT;
    MockWBTC public mockWBTC;
    MockWETH public mockWETH;
    HelperMainnet public helperMainnet;
    IbranBridgeTokenReceiver public ibranBridgeTokenReceiver;

    // deploy all chain
    function setUp() public {
        vm.createSelectFork(vm.rpcUrl("base_mainnet"));
        // vm.createSelectFork(vm.rpcUrl("arb_mainnet"));
        // vm.createSelectFork(vm.rpcUrl("op_mainnet"));

        // vm.createSelectFork(vm.rpcUrl("base_sepolia"));
        // vm.createSelectFork(vm.rpcUrl("arb_sepolia"));
        // vm.createSelectFork(vm.rpcUrl("op_sepolia"));
    }

    function run() public {
        console.log("ETH Balance before", address(vm.envAddress("ADDRESS")).balance);
        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privateKey);
        helperMainnet = new HelperMainnet();
        console.log("address public helperMainnet = ", address(helperMainnet), ";");
        // mockUSDC = new MockUSDC(address(helperMainnet));
        // ibranBridgeTokenReceiver = new IbranBridgeTokenReceiver(address(helperMainnet), address(mockUSDC));
        // console.log("address public UsdcBridgeTokenReceiver = ", address(ibranBridgeTokenReceiver), ";");
        // mockUSDT = new MockUSDT(address(helperMainnet));
        // ibranBridgeTokenReceiver = new IbranBridgeTokenReceiver(address(helperMainnet), address(mockUSDT));
        // console.log("address public UsdtBridgeTokenReceiver = ", address(ibranBridgeTokenReceiver), ";");
        // mockWBTC = new MockWBTC(address(helperMainnet));
        // ibranBridgeTokenReceiver = new IbranBridgeTokenReceiver(address(helperMainnet), address(mockWBTC));
        // console.log("address public BtcBridgeTokenReceiver = ", address(ibranBridgeTokenReceiver), ";");
        // mockWETH = new MockWETH(address(helperMainnet));
        // ibranBridgeTokenReceiver = new IbranBridgeTokenReceiver(address(helperMainnet), address(mockWETH));
        // console.log("address public EthBridgeTokenReceiver = ", address(ibranBridgeTokenReceiver), ";");

        // console.log("address public MOCK_USDC = ", address(mockUSDC), ";");
        // console.log("address public MOCK_USDT = ", address(mockUSDT), ";");
        // console.log("address public MOCK_WBTC = ", address(mockWBTC), ";");
        // console.log("address public MOCK_WETH = ", address(mockWETH), ";");


        vm.stopBroadcast();
        console.log("ETH Balance after", address(vm.envAddress("ADDRESS")).balance);
    }
}

// RUN
// forge script DeployTokenReceiver --broadcast -vvv --verify --verifier etherscan --etherscan-api-key $ETHERSCAN_API_KEY
