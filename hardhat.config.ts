import "@nomiclabs/hardhat-waffle";
import "solidity-coverage";

import { HardhatUserConfig } from "hardhat/config";

import "./tasks/faucet";

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.0",
  }
};

export default config;
