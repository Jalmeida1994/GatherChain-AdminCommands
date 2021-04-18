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

4. You're ready to give the [Desktop App](https://github.com/Jalmeida1994/GatherChain-DesktopClient) to your students!

### Delete the Blockchain Network
```
./commands/clear.sh
```