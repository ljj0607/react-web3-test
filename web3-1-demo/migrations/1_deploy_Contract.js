// 合约部署脚本
const InfoContract = artifacts.require("InfoContract");
module.exports = function (deployer) {
  deployer.deploy(InfoContract, 'InfoContract', 18);
};