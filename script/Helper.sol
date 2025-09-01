// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";

/*
██╗██████╗░██████╗░░█████╗░███╗░░██╗
██║██╔══██╗██╔══██╗██╔══██╗████╗░██║
██║██████╦╝██████╔╝███████║██╔██╗██║
██║██╔══██╗██╔══██╗██╔══██║██║╚████║
██║██████╦╝██║░░██║██║░░██║██║░╚███║
╚═╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝
*/

/**
 * @title Helper
 * @dev Helper contract containing addresses and configuration for the Ibran protocol
 * @notice This contract provides centralized address management for tokens, contracts, and chain configurations
 * @author Ibran Team
 */
contract Helper is Script {
    address public DEPLOYED_helperMainnet = 0x39926DA4905f5Edb956F5dB5F2e2FF044E0882B2;

    address public BASE_UsdcBridgeTokenReceiver = 0x15858A57854BBf0DF60A737811d50e1Ee785f9bc;
    address public BASE_UsdtBridgeTokenReceiver = 0x007F735Fd070DeD4B0B58D430c392Ff0190eC20F;
    address public BASE_BtcBridgeTokenReceiver = 0x175867CAF278eB0610F216F3E0a6E671f2382E22;
    address public BASE_EthBridgeTokenReceiver = 0xb3B458299864487520d3B0cEDf9F5cfF2629a27B;

    address public BASE_ARB_MOCK_USDC_SENDER = 0xAE1b8d3B428d6A8F62df2f623081EAC8734168fe;
    address public BASE_ARB_MOCK_USDT_SENDER = 0x6Ab9c1AAf4f8172138086AA72be2AB8aA6579dbd;
    address public BASE_ARB_MOCK_WBTC_SENDER = 0x2879d0A7AD718c096Ed35E338C23e4C79E3601d8;
    address public BASE_ARB_MOCK_WETH_SENDER = 0x487b1e0177B3ac1ACA7e8c353ed0Df133593a8EB;

    address public OP_MOCK_USDC_SENDER = 0xeA25630BF89a0fF560308E7D12920695A586b0A2;
    address public OP_MOCK_USDT_SENDER = 0xd506b22a6b3216b736021FA262D0F5D686e07b35;
    address public OP_MOCK_WBTC_SENDER = 0xBdC661EECb0dcFB940A34008e0190c9103013C41;
    address public OP_MOCK_WETH_SENDER = 0x02a66B51Fc24E08535a6Cfe1e11E532D8A089212;

    address public MOCK_USDC = 0x04C37dc1b538E00b31e6bc883E16d97cD7937a10;
    address public MOCK_USDT = 0x4Ba8D8083e7F3652CCB084C32652e68566E9Ef23;
    address public MOCK_WBTC = 0x5C368bd6cE77b2ca47B4ba791fCC1f1645591c84;
    address public MOCK_WETH = 0xC327486Db1417644f201d84414bbeA6C8A948bef;

    address public ARB_helperMainnet = 0x39926DA4905f5Edb956F5dB5F2e2FF044E0882B2;
    address public ARB_UsdcBridgeTokenReceiver = 0xa8e2E14AA272d360235B9444f8214bA5fa2A2888;
    address public ARB_UsdtBridgeTokenReceiver = 0x886ba47579DC4f5DcB53ffd20429089A7788C072;
    address public ARB_BtcBridgeTokenReceiver = 0xF0D1c69cc148db2437131a5A736d77FD6fa20B47;
    address public ARB_EthBridgeTokenReceiver = 0x290CAcb1bc6e35797Db6243a1C10C12F16d93370;

    address public ARB_MOCK_USDC = 0xAE1b8d3B428d6A8F62df2f623081EAC8734168fe;
    address public ARB_MOCK_USDT = 0x6Ab9c1AAf4f8172138086AA72be2AB8aA6579dbd;
    address public ARB_MOCK_WBTC = 0x2879d0A7AD718c096Ed35E338C23e4C79E3601d8;
    address public ARB_MOCK_WETH = 0x487b1e0177B3ac1ACA7e8c353ed0Df133593a8EB;

    address public OP_helperMainnet = 0x39926DA4905f5Edb956F5dB5F2e2FF044E0882B2;
    address public UsdcBridgeTokenReceiver = 0xa8e2E14AA272d360235B9444f8214bA5fa2A2888;
    address public UsdtBridgeTokenReceiver = 0x886ba47579DC4f5DcB53ffd20429089A7788C072;
    address public BtcBridgeTokenReceiver = 0xF0D1c69cc148db2437131a5A736d77FD6fa20B47;
    address public EthBridgeTokenReceiver = 0x290CAcb1bc6e35797Db6243a1C10C12F16d93370;

    address public OP_MOCK_USDC = 0xAE1b8d3B428d6A8F62df2f623081EAC8734168fe;
    address public OP_MOCK_USDT = 0x6Ab9c1AAf4f8172138086AA72be2AB8aA6579dbd;
    address public OP_MOCK_WBTC = 0x2879d0A7AD718c096Ed35E338C23e4C79E3601d8;
    address public OP_MOCK_WETH = 0x487b1e0177B3ac1ACA7e8c353ed0Df133593a8EB;

    address public BASE_protocol = 0xe5D4C481e25880eaD3A1647A210A9f219204f3CA;
    address public BASE_isHealthy = 0xC746B3AaB0C6Da075C9b7b43CEebd437Ef759D5b;
    address public BASE_lendingPoolDeployer = 0x9F3d0BeaFAD726bcFD3799F2B7B42eAB889ac333;
    address public BASE_lendingPoolFactory = 0x67165C24A886AAAf1bFA81934e44a2063c6B608C;
    address public BASE_lendingPool = 0x4F4E980f0C0094935c62Fc30B29d4F55DBEb824e;
    address public BASE_position = 0x1fEAD2bdAaEbb03C2739949EA3B2145f064378F0;

    address public EthUsd = 0x71041dddad3595F9CEd3DcCFBe3D1F4b0a16Bb70;
    address public BtcUsd = 0x64c911996D3c6aC71f9b455B1E8E7266BcbD848F;
    address public UsdtUsd = 0xf19d560eB8d2ADf07BD6D13ed03e1D11215721F9;
    address public UsdcUsd = 0x7e860098F58bBFC8648a4311b374B1D669a2bc6B;

    address public BASE_helperUtils = 0x1e68394DBd41F77Adf0644CE47b25D1023D664B1;

    address public BASE_oracleUsdcUsd = 0xA85C480f229FAC050ecc53FAedE343628bC242cb;
    address public BASE_oracleUsdtUsd = 0x6Ce216ec20272C69a8f3fD8bC8d13d770651FA56;
    address public BASE_oracleEthUsd = 0xEb36AA674745c48381AA3A8074E5485586dBD308;
    address public BASE_oracleBtcUsd = 0x7B3C20D2B3F8C205f624e62D356354Ed1Ae9F64b;
    // *****************************************************************************

    // address public UsdcBridgeTokenReceiver = 0xEaD20Aecb4ccDc78f7a01Da82cF137E445948080;
    // address public UsdtBridgeTokenReceiver = 0x34B081f1922919FC8D237127e07ab5C9d2ea27df;
    // address public BtcBridgeTokenReceiver = 0x1bD54e7177eb1AbdaF1b2A552a20D51c0Ab603AD;
    // address public EthBridgeTokenReceiver = 0xCC27fFB2A1dDF2a60063Bc8880a166d92cBb8EDD;

    // address public BASE_ARB_MOCK_USDC_SENDER = 0x8bdD245899fF5fcaB4C413FAFb0aa20748DD2E48;
    // address public BASE_ARB_MOCK_USDT_SENDER = 0x204f67926C8E32CDBEE3804d9eAAd1285E90F536;
    // address public BASE_ARB_MOCK_WBTC_SENDER = 0xbF5d87C06d9928F7C26F8e2c4389Bc7C9aC87Da4;
    // address public BASE_ARB_MOCK_WETH_SENDER = 0xA610d431d569fd19F725161c7F1C2C0c52Ad06F9;

    // address public BASE_OP_MOCK_USDC_SENDER = 0xdaB78aCDEAbFdB3ac96ee95efA9336a190b9Dfe5;
    // address public BASE_OP_MOCK_USDT_SENDER = 0xAeb1279d0BCa98819bb25D76e54d49c221AB5656;
    // address public BASE_OP_MOCK_WBTC_SENDER = 0x326D971476D5ECa067Ca075075e0db66d011A072;
    // address public BASE_OP_MOCK_WETH_SENDER = 0x4DB881b3f4C5e2Fa6e5ad01af5aB3fd942534b9A;

    // address public MOCK_USDC = 0xDa11C806176678e4228C904ec27014267e128fb5;
    // address public MOCK_USDT = 0xA391a85B3B8D9cC90555E848aF803BF97067aA81;
    // address public MOCK_WBTC = 0x7CC19AdfCB73A81A6769dC1A9f7f9d429b27f000;
    // address public MOCK_WETH = 0xB5155367af0Fab41d1279B059571715068dE263C;

    // address public ARB_UsdcBridgeTokenReceiver = 0xdd9d2108B4014d804940A69c4060d314fDD12894;
    // address public ARB_UsdtBridgeTokenReceiver = 0x9225628bb7c56f382E69B4f1dE9C54309A820582;
    // address public ARB_BtcBridgeTokenReceiver = 0x212e6963DBf8AfE6043c2F8e671978d855cd73a6;
    // address public ARB_EthBridgeTokenReceiver = 0x55D2E82C8d571D27B36fA3466ADb43Ea57254E3F;

    // address public ARB_MOCK_USDC = 0x1e965B05CF6336c3162a5CA0Eb9f7a908f0Bb6a6;
    // address public ARB_MOCK_USDT = 0x4c7432B98a68E09B14C2d13F5B9e7fa4e8F6Ee66;
    // address public ARB_MOCK_WBTC = 0xdDc6E8700d1207Ea9347793Ba84914Ae34A37c6D;
    // address public ARB_MOCK_WETH = 0x455Dd69cB8845354a240e68fc79508502024cf8D;

    // address public OP_UsdcBridgeTokenReceiver = 0x4d14429334D78d808e9a1039f13F59713b772e12;
    // address public OP_UsdtBridgeTokenReceiver = 0x948aaC248FEF678e34cC2d609dF4328B9DA6dC76;
    // address public OP_BtcBridgeTokenReceiver = 0x468170e92311D432e69B03A52C613A3DBb371f1D;
    // address public OP_EthBridgeTokenReceiver = 0xC9479F89fA8fcb9035A97e83B7Ae2A232f7560fc;

    // address public OP_MOCK_USDC = 0xd60DC891520f85Eb55346A077390D32b747fd30c;
    // address public OP_MOCK_USDT = 0x7f6486552841bE742FC396C8AB1fa9Cb20053983;
    // address public OP_MOCK_WBTC = 0xAc8C44c09Cfd282EBdE45CDFc7fd213402c5e614;
    // address public OP_MOCK_WETH = 0x4C1cA3C06ff0AFA986B68FF4C75b3357E6AB0D2A;

    // address public BASE_protocol = 0x12D5C6Cdd764D661cce70F1BB1eE144b7ac6D664;
    // address public BASE_isHealthy = 0x4f27734719F12D10258bbA889C789641fb4A122e;
    // address public BASE_lendingPoolDeployer = 0x37f2Bd8f84e0eA1488053B2090d29D8dE76b338a;
    // address public BASE_lendingPoolFactory = 0x31c3850D2cBDC5B084D632d1c61d54161790bFF8;
    // address public BASE_lendingPool = 0x76091aC74058d69e32CdbCc487bF0bCA09cb59D7;
    // address public BASE_position = 0x7C1A494ED22eAFC04e314c79Fc81AD11386f63a1;

    // address public EthUsd = 0x4aDC67696bA383F43DD60A9e78F2C97Fbbfc7cb1;
    // address public BtcUsd = 0x0FB99723Aee6f420beAD13e6bBB79b7E6F034298;
    // address public UsdtUsd = 0x3ec8593F930EA45ea58c968260e6e9FF53FC934f;
    // address public UsdcUsd = 0xd30e2101a97dcbAeBCBC04F14C3f624E67A35165;

    // address public oracleUsdcUsd = 0x472D927f50bBbCf493fF70f00344e419c4344158;
    // address public oracleUsdtUsd = 0x3f7563696E8be45f0B20BC2D99D220B1925E8efd;
    // address public oracleEthUsd = 0xF0470C81960C1f40A8A56e654034aC5176356AA2;
    // address public oracleBtcUsd = 0xa6c5C0dFe1fBD9e7361B459Fa18C08249805be55;

    // address public DEPLOYED_helperTestnet = 0x6b07A08C5c42576F5F32e7404eFEf3509D1A99C9;
    // address public BASE_helperUtils = 0x8030dA6FBba0B33D4Ce694B19CD1e1eC50C9d916;

    // *****************************************************************************

    address public claimAddress = vm.envAddress("ADDRESS");

    // chain id
    uint256 public ETH_Sepolia = 11155111;
    uint256 public Avalanche_Fuji = 43113;
    uint256 public Arb_Sepolia = 421614;
    uint256 public Base_Sepolia = 84532;
    uint256 public Etherlink_Testnet = 128123;

    uint256 public op_mainnet = 10;
    uint256 public arb_mainnet = 42161;
    uint256 public base_mainnet = 8453;
}
