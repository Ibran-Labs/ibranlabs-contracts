// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {IERC20} from "@openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Helper} from "./Helper.sol";
import {ILendingPool} from "../src/interfaces/ILendingPool.sol";

/*
██╗██████╗░██████╗░░█████╗░███╗░░██╗
██║██╔══██╗██╔══██╗██╔══██╗████╗░██║
██║██████╦╝██████╔╝███████║██╔██╗██║
██║██╔══██╗██╔══██╗██╔══██║██║╚████║
██║██████╦╝██║░░██║██║░░██║██║░╚███║
╚═╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝
*/

/**
 * @title LPRepayScript
 * @dev Script for repaying debt to lending pools
 * @notice This contract handles debt repayment operations for lending pools
 * @author Ibran Team
 */
contract LPRepayScript is Script, Helper {
    // --------- FILL THIS ----------
    address public yourWallet = vm.envAddress("ADDRESS");
    uint256 public amount = 1;
    // ----------------------------

    /**
     * @dev Sets up the deployment environment by creating a fork of the target network
     * @notice This function initializes the blockchain environment for deployment
     */
    function setUp() public {
        // ***************** HOST CHAIN *****************
        vm.createSelectFork(vm.rpcUrl("etherlink_testnet"));
        // **********************************************
        // vm.createSelectFork(vm.rpcUrl("arb_sepolia"));
        // vm.createSelectFork(vm.rpcUrl("avalanche_fuji"));
    }

    /**
     * @dev Main function to repay debt to the lending pool
     * @notice This function handles the debt repayment process using selected tokens
     */
    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        address borrowToken = ILendingPool(BASE_lendingPool).borrowToken();
        uint256 decimals = 10 ** IERC20Metadata(borrowToken).decimals();
        uint256 amountToPay = amount * decimals;
        uint256 debtBefore = ILendingPool(BASE_lendingPool).userBorrowShares(yourWallet);
        console.log("debtBefore", debtBefore);
        vm.startBroadcast(privateKey);
        // approve
        uint256 shares = (
            (amountToPay * ILendingPool(BASE_lendingPool).totalBorrowShares())
                / ILendingPool(BASE_lendingPool).totalBorrowAssets()
        );
        IERC20(borrowToken).approve(BASE_lendingPool, amountToPay + 1e6);
        ILendingPool(BASE_lendingPool).repayWithSelectedToken(shares, address(MOCK_USDC), false);
        uint256 debtAfter = ILendingPool(BASE_lendingPool).userBorrowShares(yourWallet);
        console.log("-------------------------------- repay --------------------------------");
        console.log("debtAfter", debtAfter);
        vm.stopBroadcast();
    }

    // RUN
    // forge script LPRepayScript -vvv --broadcast
}
