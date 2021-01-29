# chameleon-AI

AI made with R Language during a hackathon.

## Installation

Make sure you have R Enviroment set to build your AI. If not, check the [official R documentation](https://www.rdocumentation.org/).

## Run

* Make sure you have your dataset made with [Chameleon-Crawler](https://github.com/ChameleonProject/chameleon-crawler);
* Run [analysis.R](https://github.com/ChameleonProject/chameleon-AI/blob/master/analysis.R) in R Studio to train your neural net and save the model;
* Run [neural.R](https://github.com/ChameleonProject/chameleon-AI/blob/master/neural.R) also in R Studio loading your previouly created model.

## Output

The script will generate a result.csv with the probability of a profile be a fake one.

You can use this information to create your own product or visualization. We made a front model [here](https://github.com/ChameleonProject/chamaleon-front) to generate visual report. 
