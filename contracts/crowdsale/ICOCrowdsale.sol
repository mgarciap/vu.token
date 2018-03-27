pragma solidity ^ 0.4.18;

import "./BaseCrowdsale.sol";


/**
 * @title ICOCrowdsale
 * @dev ICOCrowdsale is an ICO contract for managing a token crowdsale
 *
 * Based on references from OpenZeppelin: https://github.com/OpenZeppelin/zeppelin-solidity
 */
contract ICOCrowdsale is BaseCrowdsale {
    // how many token units a buyer gets per wei
    uint public constant RATE = 6000;

    /**
    * @dev Constructor
    * @param _token Address of the token being sold
    * @param _whitelist the whitelisted users data provider
    * @param _tokenWallet Address holding the tokens, which has approved allowance to the crowdsale
    * @param _wallet Address where collected funds will be forwarded to
    */
    function ICOCrowdsale(
        ERC20 _token,
        address _whitelist,
        address _tokenWallet,
        address _wallet,
        uint _deliveryTime)
    public
        BaseCrowdsale(
            _token,
            _whitelist,
            _tokenWallet,
            _wallet,
            RATE,
            _deliveryTime)
    {
    }
}
