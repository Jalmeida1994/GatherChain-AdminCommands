# GatherChain Admin Commands

## Admin commands for my thesis: _Tracing Responsability with Blockchain_ (Under Development)

### Start the Blockchain Network

1. Initialize the project with [Gather-Chain-Template](https://github.com/Jalmeida1994/Gather-Chain-Template)

2. Get the public IP of the VM:
```
IP=$(az vm show -d -g $[resourceGroupName] -n $[vMName] --query publicIps -o tsv)
```

3. Initialize the blockchain network:
```
./commands/init.sh $IP
```
It'll probably give a timeout error. Launching the blockchain can take some time. If you want you can ssh into the vm and run the command to initialize the blockchain yourself.

4. You're ready to give the [Desktop App](https://github.com/Jalmeida1994/GatherChain-DesktopClient) to your students!

### Delete the Blockchain Network
```
./commands/clear.sh
```

### Get History from blockchain
```
./commands/history.sh
```
It works better if you ssh into the VM and run the get history command. Minifab outputs a lot.