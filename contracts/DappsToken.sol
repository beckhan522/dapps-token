pragma solidity ^0.5.0;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract DappsToken is StandardToken {
  string public name = "banana";// トークンの名称を設定
  string public symbol = "BNN";// トークンを単位として表す場合にどのように表記するかを設定
  uint public decimals = 18;// 小数点の桁をどのまで許可するかを設定
  // 初期発行量
  uint256 public initialSupply = 20000000 * (10 ** uint256(decimals));

  constructor() public {
    // 最初は発行者にすべてを振り込む
    balances[msg.sender] = initialSupply;
  }
}
