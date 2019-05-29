# Cloudera AI to Edge Demo

This repository contains files related to Cloudera AI to Edge demo.
Detailed overview can be found in this article: *to be written*


## Demo Overview

The demo leverages multiple components of the Cloudera stack to train a Deep Neural Network model (leveraging Keras) on the [MNIST database](http://yann.lecun.com/exdb/mnist/), based on this kaggle following [Kaggle article](https://www.kaggle.com/poonaml/deep-neural-network-keras-way/data) and publish it to a minifi agent running on the edge.

The demo has three main sections:
- Section 1: CDSW model training using a custom docker image with Jupyter
- Section 2: MLEAP model deployment in a custom Nifi Processor
- Section 3: Flow deployment to Minifi using EFM

## Section 1: CDSW model training using a custom docker image with Jupyter

Make sure you create a project using this repository in CDSW.

In CDSW config, use the docker hub image `paulvid/ai-to-edge:dev` as your default engine:
![Custom Engine](https://github.com/paulvid/ai_to_edge/blob/master/ASSETS/CDSW_ENGINE.png)

After a session is launched, the following command should run (from the .bashrc file): 
`!jupyter notebook --no-browser --ip=0.0.0.0 --port=8080 --NotebookApp.token=`

Therefore, you should then see the Jupyter Home link in the "nine dots" box:
![9 dots](https://github.com/paulvid/ai_to_edge/blob/master/ASSETS/9_DOTS.png)

# Author

**Paul Vidal** - *Initial work* - [LinkedIn](https://www.linkedin.com/in/paulvid/)
