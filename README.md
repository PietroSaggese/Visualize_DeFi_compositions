# Visualize_DeFi_compositions

This repository is part of the work conducted in our study "A Systematic Investigation of DeFi Compositions in Ethereum" 
(by Kitzler S., Saggese P., Victor F., Haslhofer B.) and contains a visualization tool to inspect 
compositions of DeFi protocol-specific smart contracts in the Ethereum ecosystem. The work was presented at the 2nd 
Workshop on Decentralized Finance (DeFi'22), as part of the conference Financial Cryptography and Data Security 2022 (FC'22).

The simplest way to visualize compositions is to connect to the folowing link, which redirects to an instance hosted on our servers:

https://vis.csh.ac.at/shiny/DeFi_composition_APP/

In alternative, it is possible to visualize it locally by running the script and data provided. 
(The interface of the instance hosted on the server and the local one might be slightly different.)

The shiny app was developed and works under R version 3.6.3 with the following package versions:
- plotly: ‘4.10.0’
- shiny: ‘1.4.0’
- data.table: ‘1.14.2’
- magrittr: ‘2.0.1’
