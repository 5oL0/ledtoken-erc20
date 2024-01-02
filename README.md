# LED Token - Sport & Health / AI / IPFS / Blockchain - Earn Tokens as Rewards for working out, exercising and living healthier.
## ledtoken-erc20 smartcontract
token minted on 5/26/2019
###### Copyright © 2019 LED Token


### LEDToken.net
LED - Linear Exchange Datashares
website runs on IPFS

Ethereum Name Service (ENS):
ledtoken.eth

Instagram: https://instagram.com/l.e.d.token

Telegram: 
https://t.me/ledtoken

Twitter:
@Tokenled


LED Token is a sport and health utility token (erc20) or "smart contract" written on the Ethereum Blockchain which focuses on rewarding users by following and completing workouts and healthy regimens.


## Products Developed

-LED web dashboard for health monitoring of physical activities and health regimens which includes a coaching assistant, reminders & notifications. 

-LED Token wallet which integrates with MetaMask for token transfers

-LED healthy habit dApp which acts as a Piggy bank but allows you to accumulate tokens by staking them and lock them up until you complete your goals.

-Integration with Moralis.io web3 servers for Multichain interoperability and LED Defi exchange

-Automation & Orchestration of LED nodes in AWS Cloud using Terraform, Ansible, Packer toolstack

-LED Token mobile app for earning and getting rewarded in LED tokens for exercising & completing healthy regimens - front end design with Adobe XD 

-Minted NFT erc721 3D animated LED Token card design

-Crypto trading bot for automated trades in Java & Nodejs


## Products In Development

-LED AI Jarvis coaching assistant built on Python which acts as an expert input/output question system using Speech Recognition, NLP, Scikit, Numpy, WolframAlpha

-MetaVerse Fitness center for working out in a move to earn platform

-API integration with the Native smartphone health app which will allow the health data to be converted into Cryptocurrency (LED tokens) and can be used within the LED health eco system or bridged to Ethereum for conversion

-Interplanetary file system (IPFS) for health records (ehr) which will hash encrypt patient data on a decentralized peer2peer network to help secure the data. 

-Python Crypto trading bot API's for Multiple Exchanges

-Python AI Medical Imaging & Text-to-Image Generator

-Health Messaging app for sharing health data & earning crypto

Users own their health data and can share it via the Blockchain to Doctors, Hospitals, Coaches/Trainers, Insurance companies using QRcodes. Patients and Athletes can earn LED token rewards and accrue them to pay for health services within the LED eco system or convert tokens back to Ethereum or Bitcoin. Gamers in the metaverse will be able to earn LED tokens by their physical activity.


## Why LED

LED token is written on the Ethereum Blockchain which is the biggest Blue Chip Crypto and biggest dApp network and currently working on multichain interoperability with other blockchains like Polygon, Avalanche, Fantom, Solana and Binance. 

Step Recording: Records steps walked by the user and for every 5000 steps, the mobile app rewards the user with 10 LED Tokens for example

Batch Minting and Reward Calculation: Instead of minting tokens individually for each action (steps, swimming, calorie burn), batch the minting process. Accumulate rewards and mint in larger quantities at intervals. This reduces the number of individual transactions, which can be gas-expensive.

Storage Optimization: Use storage efficiently. For instance, consider using arrays or mappings with structs if certain data can be grouped together. Minimize redundant data storage if possible.

Reduce Redundant Computations: In functions like recordSteps, recordSwimmingLengths, and recordCaloriesBurnt, you're calculating tokensEarned similarly. Consider creating a separate internal function to handle token calculation to avoid redundancy.

Event Logging: Emit events efficiently. Emit events when necessary but avoid excessive event emissions, as they consume gas.

Staking Rewards Calculation: Review the staking rewards formula in the unstake function. Ensure it accurately calculates rewards based on your intended staking mechanism.

Gas-Efficient Loops: If you're using loops, ensure they are gas-efficient. Gas costs increase with loop iterations, so optimize loop functionalities.

Integrate the dApp with smart wearable devices, such as fitness trackers or smartwatches, to automate the process of verifying the completion of an exercise or health regimen.

Record Cycling Distance: Similar to recordSteps and recordSwimmingLengths, you can have a function to record cycling distance and reward users accordingly.

Track Calorie Burn: If your contract involves fitness, tracking calorie burn could be useful.

Achievement Unlocks: Reward users for reaching specific milestones or achievements.

Community Challenges: Implement functions for participating in or completing community challenges.

