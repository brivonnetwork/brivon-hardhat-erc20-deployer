# Hardhat ERC-20 Deployer

A standalone Hardhat 3 and Ignition project that compiles and deploys a fixed-supply ERC-20 token. It uses OpenZeppelin's ERC-20 implementation and gives the initial supply to the deployer. It has no owner mint function or app integration.

The API catalogue command is a separate read-only example that uses the Brivon public app identifier to look up Brivon Testnet metadata. It does not run automatically as part of a deployment.

## Requirements

- Node.js 22.13 or newer
- npm

## Build and deploy locally

    npm install
    npm run compile
    npm run deploy:local

The local deployment uses Hardhat's simulated network and does not touch a public chain.

To list Brivon's network catalogue:

    cp .env.example .env
    npm run api:networks

## Optional Brivon Testnet deployment

Store credentials in Hardhat's encrypted local keystore. Never paste a key into source code or commit an .env file.

    npx hardhat keystore set BRIVON_TESTNET_RPC_URL
    npx hardhat keystore set DEPLOYER_PRIVATE_KEY
    npm run deploy:testnet

The RPC URL may include an RPC provider credential; store it in Hardhat's encrypted keystore as shown above. The deployer key must belong to a separate wallet funded only with Brivon Testnet ETH. Confirm chain ID 9182 and the deployment parameters before running a testnet deployment. Do not use a valuable wallet key.

The token name, symbol and initial supply are in ignition/modules/CreatorToken.js. Review and change them before recording a deployment. This educational project is not an audited token launch package.
