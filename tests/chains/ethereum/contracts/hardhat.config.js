require("@nomicfoundation/hardhat-toolbox");
require("@openzeppelin/hardhat-upgrades");

const mnemonic =
  "math razor capable expose worth grape metal sunset metal sudden usage scheme";

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: {
    version: "0.8.20",
    settings: {
      optimizer: {
        enabled: true,
        runs: 9_999_999
      }
    },
  },
  networks: {
    ibc0: {
      url: "http://geth0-scaffold:8545",
      accounts: {
        mnemonic: mnemonic,
      },
      chainId: 2018,
    },
    ibc1: {
      url: "http://geth1-scaffold:8545",
      accounts: {
        mnemonic: mnemonic,
      },
      chainId: 2019,
    },
  }
}
