var DappsToken = artifacts.require("./DappsToken.sol");

module.exports = function(deployer){
    deployer.deploy(DappsToken, {gas: 7500000})
}
