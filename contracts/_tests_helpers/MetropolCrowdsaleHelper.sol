pragma solidity ^0.4.18;

import '../MetropolCrowdsale.sol';

/**
 * MetropolCrowdsale
 */
contract MetropolCrowdsaleHelper is MetropolCrowdsale {

    function MetropolCrowdsaleHelper(
            address _token,
            address _funds,
            address[] _owners
        )
        public
        MetropolCrowdsale(
            _token,
            _funds,
            _owners
        )

    {
    }


    /**
     * Since caps are set in ether div it by 1 ether for testing by less funds
     */
    function getMinimumFunds() internal constant returns (uint) {
        return super.getMinimumFunds() / 1 ether;
    }
    function getMaximumFunds() internal constant returns (uint) {
        return super.getMaximumFunds() / 1 ether;
    }


    function getCurrentTime() internal constant returns (uint) {
        return m_time;
    }

    uint m_time;
    function setTime(uint time) external {m_time = time;}
}
