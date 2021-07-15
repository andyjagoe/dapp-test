[![Build Status](https://travis-ci.com/andyjagoe/hardhat-dapp.svg?token=Uy6FPYeyZ1PSDrsp6VVq&branch=main)](https://travis-ci.com/andyjagoe/hardhat-dapp) [![Coverage Status](https://coveralls.io/repos/github/andyjagoe/hardhat-dapp/badge.svg?branch=main)](https://coveralls.io/github/andyjagoe/hardhat-dapp?branch=main)

# Hardhat Typescript Boilerplate

This repository contains a sample project that you can use as the starting point
for your Ethereum project. It's a modified typescript version of the [Hardhat Hackathon 
javascript boilerplate](https://hardhat.org/tutorial) that uses an OpenZeppelin ERC-20 
token instead of a proprietary token.

## Quick start

The first things you need to do are cloning this repository and installing its
dependencies:

```sh
git clone https://github.com/andyjagoe/hardhat-dapp.git
cd hardhat-dapp
npm install
```

Once installed, run Hardhat's testing network:

```sh
npx hardhat node
```

Then, in a new terminal, go to the repository's root folder and run this to
deploy your contract:

```sh
npx hardhat run scripts/deploy.js --network localhost
```

Finally, run the frontend with:

```sh
cd frontend
npm install
npm start
```

> Note: There's [an issue in `ganache-core`](https://github.com/trufflesuite/ganache-core/issues/650) that can make the `npm install` step fail. 
>
> If you see `npm ERR! code ENOLOCAL`, try running `npm ci` instead of `npm install`.

Open [http://localhost:3000/](http://localhost:3000/) to see your Dapp. You will
need to have [Metamask](https://metamask.io) installed and listening to
`localhost 8545`. You need to change your Chain ID for localhost:8545 to 31337.

## User Guide

You can find detailed instructions on using Hardhat and many tips in [here](https://hardhat.org/tutorial).

- [Setting up the environment](https://hardhat.org/tutorial/1-setup/)
- [Testing with Hardhat, Mocha and Waffle](https://hardhat.org/tutorial/5-test/)
- [Setting up Metamask](https://hardhat.org/tutorial/8-frontend/#setting-up-metamask)
- [Hardhat's full documentation](https://hardhat.org/getting-started/)

For a complete introduction to Hardhat, refer to [this guide](https://hardhat.org/getting-started/#overview).

## What’s Included?

Your environment will have everything you need to build a Dapp powered by Hardhat and React. Background on setting up Travis CI and Coveralls can be found [here](https://forum.openzeppelin.com/t/test-smart-contracts-like-a-rockstar/1001).

- [Hardhat](https://hardhat.org/): An Ethereum development task runner and testing network.
- [Mocha](https://mochajs.org/): A JavaScript test runner.
- [Chai](https://www.chaijs.com/): A JavaScript assertion library.
- [ethers.js](https://docs.ethers.io/ethers.js/html/): A JavaScript library for interacting with Ethereum.
- [OpenZeppelin](https://openzeppelin.com/): A library for secure smart contract development.
- [Waffle](https://github.com/EthWorks/Waffle/): To have Ethereum-specific Chai assertions/mathers.
- [solidity-coverage](https://hardhat.org/plugins/solidity-coverage.html): Solidity coverage report.
- [Travis CI](https://www.travis-ci.com/): Continuous integration service free for open source projects.
- [Coveralls](https://coveralls.io/v): Web service to track coverage over time.
- [[hardhat-gas-reporter](https://hardhat.org/plugins/hardhat-gas-reporter.html): eth-gas-reporter plugin to estimate function and deployment gas costs.
- [A sample frontend/Dapp](./frontend): A Dapp which uses [Create React App](https://github.com/facebook/create-react-app).

## Troubleshooting

- `Invalid nonce` errors: if you are seeing this error on the `npx hardhat node`
  console, try resetting your Metamask account. This will reset the account's
  transaction history and also the nonce. Open Metamask, click on your account
  followed by `Settings > Advanced > Reset Account`.
