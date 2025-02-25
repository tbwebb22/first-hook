
import {ERC20} from "uniswap-hooks/lib/v4-core/lib/solmate/src/tokens/ERC20.sol";
import {Owned} from "uniswap-hooks/lib/v4-core/lib/solmate/src/auth/Owned.sol";

contract PointsToken is ERC20, Owned {
    constructor() ERC20("Points Token", "POINTS", 18) Owned(msg.sender) {}

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}