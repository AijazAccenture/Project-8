# Project 8: Build and Run Docker App Locally

## Goal
Practice container deployment by packaging a web app into a Docker image
and running it as a container locally.

## Files
| File | Purpose |
|---|---|
| `Dockerfile` | Recipe: Nginx (alpine) base image + our web page |
| `index.html` | The web app (static page served by Nginx) |

## How to build and run
~~~bash
sudo docker build -t project8-docker-app:v1 .
sudo docker run -d --name project8-app -p 8080:80 project8-docker-app:v1
sudo docker ps
curl http://localhost:8080
~~~
Then open http://localhost:8080 in a browser.

## How to stop and clean up
~~~bash
sudo docker stop project8-app
sudo docker rm project8-app
sudo docker rmi project8-docker-app:v1
~~~
