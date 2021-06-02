[![t-benedek](https://circleci.com/gh/t-benedek/udacity-clouddevops-lesson4-ml-starter.svg?style=shield)](https://app.circleci.com/pipelines/github/t-benedek/udacity-clouddevops-lesson4-ml-starter)

## Project Overview
This project shows how to build a simple machine learning written in python (pre-trained sklearn model) to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site (https://www.kaggle.com/c/boston-housing) 

## How to run this project

### run locally with python
- Create and active a new environment "make setup"
- Install the needed liberaries: "make install"
- Run the python app: "python app.py"
- use the script "make_prediction.sh" in another terminal to get out a prediction value

### Run using docker
- use the script "run_docker.sh" to build the image, display your docker images and run the docker image on port 8000
- use the script "make_prediction.sh" in another terminal to get out a prediction value

## File overview
- model_data: pretrained model
- output_txt_files: output files to re-check 
- Dockerfile: docker definition file
- Makefile: makefile to run locally, in docker or in circleci
- app.py: Main python app
- make_prediction.sh: test presiction against a running model 
- requirements.txt: reuquired dependences
- run_docker.sh: running pretrained model with docker 
- run_kubernetes.sh: running docker image using kubernetes (you need minikube installed)
