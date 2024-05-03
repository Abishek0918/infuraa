require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks:{
    hardhat:{},
    sepolia:{
      url:"https://sepolia.infura.io/v3/7da58aad974744548e9dd5b204b35864",
      accounts:[process.env.PRIVATE_KEY]
    }
  }
};
