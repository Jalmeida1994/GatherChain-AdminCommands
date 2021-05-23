<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/Jalmeida1994/GatherChain-AdminCommands">
    <img src="images/Logo-02.png" alt="Logo" width="120">
  </a>

  <h3 align="center">GatherChain Admin Commands</h3>

  <p align="center">
    Admin commands of the GatherChain solution.
    <br />
    <a href="https://github.com/Jalmeida1994/GatherChain-AdminCommands/blob/master/README.md"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Jalmeida1994/GatherChain-AdminCommands/issues">Report Bug</a>
    ·
    <a href="https://github.com/Jalmeida1994/GatherChain-AdminCommands/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

GatherChain is the solution created for my Master Thesis: __Tracing Responsibility in Evolution of Model's Life Cycle in Collaborative Projects in Education__.
In the paper, it is proposed a blockchain-based solution for version control of model-driven engineering artefacts.  The goal is to facilitate collaboration in a multi-user area, like the education field, and track changes in a trusted and secure manner. This solution is based on using the Hyperledger Fabric Network to govern and regulate file version control functions among students and teachers.
This repository is a part of the larger GatherChain solution.

The other GatherChain projects are:
* __GatherChain Desktop Client__: https://github.com/Jalmeida1994/GatherChain-DesktopClient
* __GatherChain Web Server__: https://github.com/Jalmeida1994/GatherChain-Web-Server
* __GatherChain Blockchain Server__: https://github.com/Jalmeida1994/GatherChain-BlockChain-Server
* __GatherChain ARM Template__: https://github.com/Jalmeida1994/GatherChain-ARM-Template

This repository serves as the administration commands of the blockchain network.

### Built With

The commands are built with:
* [Shell Scripts](https://www.shellscript.sh)
    * [GNU Bash](https://www.gnu.org/software/bash/)


<!-- GETTING STARTED -->
## Getting Started

In this section it'll be shown how to get started with this solution. Only tested in `ubuntu 20.04` and `macOS Big Sur`.
### Prerequisites

* [Bash shell](https://www.gnu.org/software/bash/)
* [GatherChain ARM Template deployed](https://github.com/Jalmeida1994/GatherChain-ARM-Template)

### Installation


1. Clone the repo
   ```
   git clone https://github.com/Jalmeida1994/GatherChain-AdminCommands.git
   ```
2. Change the [weburl.env](https://github.com/Jalmeida1994/GatherChain-AdminCommands/blob/master/.weburl.env) file with the URL of the WebApp instantiated during the GatherChain ARM Template phase.
    ```
    export WEB_URL=https://NameOfTheApp.azurewebsites.net
    ```
    The domain `azurewebsites` is only used if the GatherChain Template was deployed in Azure and if no custom domain was configured in the webapp.

3. Initialize the blockchain network:
    ```
    ./commands/init.sh 
    ```
    It'll probably give a timeout error. Launching the blockchain can take some time. WebApps in Azure have a timeout smaller than the time to initialize the blockchain network. Give it about 30 minutes to start. If you want you can ssh into the VM and run the command to initialize the blockchain yourself and check the progress.
   

<!-- USAGE EXAMPLES -->
## Usage

After the blockchain is initialized you're ready to start configuring the desktop client used by the users to communicate with the network. The client can be found in the repository [GatherChain Desktop App](https://github.com/Jalmeida1994/GatherChain-DesktopClient).

_For more information, please refer to the [Documentation](https://github.com/Jalmeida1994/GatherChain-DesktopClient/blob/master/README.md)_


<!-- USAGE EXAMPLES -->
### Clear the blockchain network

```
./commands/clear.sh
```
After clearing you need to use the [init.sh](https://github.com/Jalmeida1994/GatherChain-AdminCommands/blob/master/commands/init.sh) command to start the network again.

### Get history from blockchain

In order to get the commit history for a group (`${groupName}`) you can use the command:
    ```
    ./commands/history.sh ${groupName}
    ```
It works better if you ssh into the VM and run the get history command. [Minifab](https://github.com/hyperledger-labs/minifabric) (the binary used to communicate with the network) prints a lot of output.


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/Jalmeida1994/GatherChain-AdminCommands/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

João Almeida - [@João Almeida](https://www.linkedin.com/in/jo%C3%A3o-almeida-525476125/) - jcfd.almeida@campus.fct.unl.pt

Project Link: [https://github.com/Jalmeida1994/GatherChain-AdminCommands](https://github.com/Jalmeida1994/GatherChain-AdminCommands)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [FCT-UNL](https://www.fct.unl.pt/)
* [Professor Vasco Amaral](https://docentes.fct.unl.pt/vma/)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Jalmeida1994/GatherChain-AdminCommands.svg?style=for-the-badge
[contributors-url]: https://github.com/Jalmeida1994/GatherChain-AdminCommands/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Jalmeida1994/GatherChain-AdminCommands.svg?style=for-the-badge
[forks-url]: https://github.com/Jalmeida1994/GatherChain-AdminCommands/network/members
[stars-shield]: https://img.shields.io/github/stars/Jalmeida1994/GatherChain-AdminCommands.svg?style=for-the-badge
[stars-url]: https://github.com/Jalmeida1994/GatherChain-AdminCommands/stargazers
[issues-shield]: https://img.shields.io/github/issues/Jalmeida1994/GatherChain-AdminCommands.svg?style=for-the-badge
[issues-url]: https://github.com/Jalmeida1994/GatherChain-AdminCommands/issues
[license-shield]: https://img.shields.io/github/license/Jalmeida1994/GatherChain-AdminCommands.svg?style=for-the-badge
[license-url]: https://github.com/Jalmeida1994/GatherChain-AdminCommands/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/jo%C3%A3o-almeida-525476125/
[product-screenshot]: images/arm-template.png
