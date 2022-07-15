## Operationalize a Machine Learning Microservice API

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/GithiuIsaac/flaskapi-k8s/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/GithiuIsaac/flaskapi-k8s/tree/main)

**This project showcases the abilities to operationalize production microservices.**
Operationalize a Machine Learning Microservice API given a pre-trained, `sklearn` model that has been trained
to predict housing prices in Boston according to several features, such as average rooms in a home and data about 
highway access, teacher-to-pupil ratios, and so on. 

Read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 
This project showcases the ability to operationalize the Python flask app, `app.py`—that serves out predictions (inferences) 
about housing prices through API calls. This project could be extended to any pre-trained machine learning model, 
such as those for image recognition and data labeling.

## Project Outline
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy the container using Kubernetes and make a prediction
* Upload the complete Github repo with CircleCI to indicate that the code has been tested

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```bash
python3 -m venv ~/.devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
