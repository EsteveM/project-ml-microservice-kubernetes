[![CircleCI](https://circleci.com/gh/EsteveM/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/EsteveM/project-ml-microservice-kubernetes)

# Machine Learning Microservice API Operationalization

This project is intended to operationalize a Machine Learning Microservice API using [kubernetes](https://kubernetes.io/). In particular, a Python Flask app that infers predictions about housing prices through API calls.

## Table of Contents

* [Project Overview](#project-overview)
* [Getting Started](#getting-started)
* [Repository Files](#repository-files)
* [Contributing](#contributing)


## Project Overview

As already mentioned, the aim of this project is to operationalize a Machine Learning Microservice API using kubernetes. In order to accomplish this goal, a number of tasks have been performed:

* Test project code using linting.
* Complete a Dockerfile to containerize the application, a Python Flask app.
* Deploy the containerized application using Docker and make a prediction.
* Improve the log statements in the source code for the application.
* Configure Kubernetes and create a Kubernetes cluster.
* Deploy a container using Kubernetes and make a prediction.
* Upload a complete Github repo with CircleCI to indicate that the code has been tested.

## Getting Started

In this section, instructions on how to run the Python scripts and web app are given.

### Setup the Environment

* Clone this project repository, and cd to the main project folder.
* Create a virtualenv and activate it. Run `python3 -m venv ~/.devops` and `source ~/.devops/bin/activate`.
* Run `make install` to install the necessary dependencies.
* Install Docker to build and upload a containerized application. To this end, [create a Docker account](https://hub.docker.com/), and [install the latest stable release](https://docs.docker.com/get-docker/).
* [Install hadolint](https://github.com/hadolint/hadolint) to check the Dockerfile for errors, and [install pylint](https://pypi.org/project/pylint/) to check the Python app source code for errors.
* Install VirtualBox running `brew cask install virtualbox` for Mac, and minikube by running `brew cask install minikube` for Mac as well. For Windows, see [here for VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [here for minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/).

### Running `app.py`

1. Standalone:  `python app.py`.
2. Run in Docker:  `./run_docker.sh`.
3. Run in Kubernetes:  `./run_kubernetes.sh`.

To make a prediction, please open a separate tab or terminal window, cd to the main project folder, if you are not already there, and run `./make_prediction.sh`. Please, note that the app must be running in order to make predictions.

For completeness, note that once you have already built the docker image with `./run_docker.sh`, you can upload the image to Docker Hub by running `./upload_docker.sh`.

### Kubernetes Steps

* Setup and Configure Docker locally.
* Setup and Configure Kubernetes locally.
* Create Flask app in Container.
* Run via kubectl.

## Repository Files

In this section, the repository files are described:

* *.circleci/config.yml*: identifies how to set up the testing environment and what tests to run on CircleCI.
* *model_data*: files in this folder are related to the pre-trained, sklearn model that has been trained to predict housing prices in Boston.
* *output_txt_files/docker_out.txt*: it includes all log statements when making a prediction with the app running in Docker.
* *output_txt_files/kubernetes_out.txt*: it includes all log statements when making a prediction with the app running in Kubernetes.
* *app py*: Python flask app that infers predictions about housing prices through API calls.
* *Dockerfile*: contains all the commands to assemble the image.
* *make_prediction.sh*: it sends some input data to the app via the appropriate port.
* *Makefile*: the Makefile makes it possible to include a number of commands in it, and run them. In particular, this Makefile allows us to run commands to perform the setup, install, test, and lint steps.
* *requirements.txt*: it lists many of the project dependencies.
* *run_docker.sh*: it runs the containerized application, by building and running the docker image defined in the Dockerfile.
* *run_kubernetes.sh*: it deploys the application on a Kubernetes cluster, and the docker container is subsequently run.
* *upload_docker.sh*: it uploads the built image to Docker.

## Contributing

This repository contains all the work that makes up the project. Individuals and I myself are encouraged to further improve this project. As a result, I will be more than happy to consider any pull requests.
