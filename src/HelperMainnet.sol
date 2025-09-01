// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
██╗██████╗░██████╗░░█████╗░███╗░░██╗
██║██╔══██╗██╔══██╗██╔══██╗████╗░██║
██║██████╦╝██████╔╝███████║██╔██╗██║
██║██╔══██╗██╔══██╗██╔══██║██║╚████║
██║██████╦╝██║░░██║██║░░██║██║░╚███║
╚═╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝
*/

/**
 * @title HelperMainnet
 * @dev Helper contract for managing mainnet chain configurations and bridge settings
 * @notice This contract provides centralized configuration for mainnet chains and bridge operations
 * @author Ibran Team
 * @custom:security-contact security@ibran.com
 * @custom:version 1.0.0
 */
contract HelperMainnet {
    // ============ Errors ============

    /**
     * @dev Error thrown when a non-owner tries to perform owner-only operations
     */
    error NotOwner();

    /**
     * @dev Error thrown when trying to add a chain that already exists
     */
    error ChainAlreadyExists();

    /**
     * @dev Error thrown when trying to add a token that already exists
     */
    error TokenAlreadyExists();

    /**
     * @dev Error thrown when trying to access a token that doesn't exist
     */
    error TokenNotExists();

    // ============ Structs ============

    /**
     * @dev Structure containing chain configuration information
     * @param mailbox Address of the Hyperlane mailbox contract
     * @param gasMaster Address of the gas master contract
     * @param domainId Domain ID for the chain
     */
    struct ChainInfo {
        address mailbox;
        address gasMaster;
        uint32 domainId;
    }

    // ============ State Variables ============

    /**
     * @dev Mapping from chain ID to chain configuration
     */
    mapping(uint256 => ChainInfo) public chains;

    /**
     * @dev Mapping from chain ID to receiver bridge address
     */
    mapping(uint256 => address) public receiverBridge;

    /**
     * @dev Address of the contract owner
     */
    address public owner;

    /**
     * @dev Current chain ID
     */
    uint256 public chainId;

    // ============ Modifiers ============

    /**
     * @dev Modifier to restrict access to owner only
     */
    modifier onlyOwner() {
        _onlyOwner();
        _;
    }

    /**
     * @dev Internal function to check if caller is owner
     * @notice Reverts if caller is not the owner
     */
    function _onlyOwner() internal view {
        if (msg.sender != owner) revert NotOwner();
    }

    /**
     * @dev Constructor for the HelperMainnet contract
     * @notice Initializes the contract with owner and pre-configures mainnet chains
     */
    constructor() {
        owner = msg.sender;
        chainId = block.chainid;

        // ARBITRUM
        chains[42161] =
            ChainInfo(0x979Ca5202784112f4738403dBec5D0F3B9daabB9, 0x3b6044acd6767f017e99318AA6Ef93b7B06A5a22, 42161);

        // BASE
        chains[8453] =
            ChainInfo(0xeA87ae93Fa0019a82A727bfd3eBd1cFCa8f64f1D, 0xc3F23848Ed2e04C0c6d41bd7804fa8f89F940B94, 8453);

        // OPTIMISM
        chains[10] =
            ChainInfo(0xd4C1905BB1D26BC93DAC913e13CaCC278CdCC80D, 0xD8A76C4D91fCbB7Cc8eA795DFDF870E48368995C, 10);
    }

    // ============ Public Functions ============

    /**
     * @dev Adds a new chain configuration
     * @param _mailbox Address of the mailbox contract
     * @param _gasMaster Address of the gas master contract
     * @param _domainId Domain ID for the chain
     * @param _chainId Chain ID to add
     * @notice This function allows the owner to add new chain configurations
     * @custom:security Only the owner can add new chains
     */
    function addChain(address _mailbox, address _gasMaster, uint32 _domainId, uint256 _chainId) external onlyOwner {
        chains[_chainId] = ChainInfo(_mailbox, _gasMaster, _domainId);
    }

    /**
     * @dev Adds a receiver bridge for a specific chain
     * @param _chainId Chain ID for the bridge
     * @param _receiverBridge Address of the receiver bridge contract
     * @notice This function allows the owner to add receiver bridge configurations
     * @custom:security Only the owner can add receiver bridges
     */
    function addReceiverBridge(uint256 _chainId, address _receiverBridge) external onlyOwner {
        receiverBridge[_chainId] = _receiverBridge;
    }
}
