# Cloudera AI to Edge Demo

This repository contains files related to Cloudera AI to Edge demo.
Detailed overview can be found in this article: *to be written*


## Demo Overview

The demo leverages multiple components of the Cloudera stack to train a Deep Neural Network model (leveraging Keras) on the [http://yann.lecun.com/exdb/mnist/](MNIST database), based on this kaggle following [https://www.kaggle.com/poonaml/deep-neural-network-keras-way/data](Kaggle article) and publish it to a minifi agent running on the edge.

The demo has three main sections:
- Section 1: CDSW model training using a custom docker image with Jupyter
- Section 2: MLEAP model deployment in a custom Nifi Processor
- Section 3: Flow deployment to Minifi using EFM

## Section 1: CDSW model training using a custom docker image with Jupyter

In CDSW config, use the docker hub image `paulvid/ai-to-edge:dev` as your default engine:

After a session is launched, run the following command in the session terminal: 
`jupyter notebook --no-browser --ip=0.0.0.0 --port=8080 --NotebookApp.token=`

You should then see the Jupyter Home link in the "nine dots" box:


# Author

**Paul Vidal** - *Initial work* - [LinkedIn](https://www.linkedin.com/in/paulvid/)
