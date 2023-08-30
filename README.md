
# ZK SNARK Designer
In this project we have create a circuit and implement it on hardhat using circum programming laungauge

## Circuit Code 
##NOT Gate template 
template NOT() {
   
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}
## AND gate template

template AND() {
   
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
## OR Gate Template

template OR() {
  
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

## Step to execute program
## Install

npm i
## Compile 
npx hardhat circom This will generate the out file with circuit intermediaries and geneate the MultiplierVerifier.sol contract
## Deploy
npx hardhat run scripts/deploy.ts
It will give
Downloading compiler 0.6.11
Compiled 1 Solidity file successfully
Verifier deployed to 0x5FbDB2315678afecb367f032d93F642f64180aa3
Verifier result: true

## Author
Diya 
