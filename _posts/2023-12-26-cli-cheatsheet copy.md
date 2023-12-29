---
layout: post
title:  "Utilities CLI Cheat Sheet"
date:   2023-12-26 21:33:05 +0000
category: ['cheetsheets','devops']
permalink: /blog/cli
thumbnail: /assets/img/posts/default-img.jpg

---

## CLi useful command

| OS         | Utility Meaning       | Command            | Description                                                 | Example                                           | Example Description                                  |
|------------|-----------------------|--------------------|-------------------------------------------------------------|---------------------------------------------------|------------------------------------------------------|
| Docker     | List Docker Processes | `docker ps`        | Lists running Docker containers                             | `docker ps`                                       | Lists all active Docker containers                   |
| Docker     | Run Docker Container  | `docker run`       | Runs a command in a new Docker container                    | `docker run -it ubuntu bash`                       | Runs an interactive Ubuntu container with bash       |
| Docker     | Build Docker Image    | `docker build`     | Builds Docker images from a Dockerfile                      | `docker build -t myimage:latest .`                 | Builds a Docker image named `myimage`                |
| Docker     | Execute in Docker     | `docker exec`      | Executes a command in a running container                   | `docker exec -it mycontainer bash`                 | Opens bash in running container `mycontainer`        |
| Docker     | List Docker Images    | `docker images`    | Lists all Docker images locally                             | `docker images`                                   | Lists all Docker images on local machine             |
| Docker     | Docker Compose        | `docker-compose`   | Runs and manages multi-container Docker applications        | `docker-compose up`                               | Starts containers defined in `docker-compose.yml`    |
| k8s        | Kubernetes Control    | `kubectl`          | Command line tool for Kubernetes                            | `kubectl get pods`                                | Lists all pods in the current namespace              |
| k8s        | Helm Package Manager  | `helm`             | Manages Kubernetes applications                             | `helm install myapp ./mychart`                    | Installs an application using a Helm chart           |
| Git        | Git Version Control   | `git`              | Distributed version control system                          | `git clone repo_url`                              | Clones a repository from 'repo_url'                  |
| Git        | Git Branch            | `git branch`       | Manages branches in Git                                     | `git branch new-branch`                           | Creates a new branch 'new-branch'                    |
| Git        | Git Merge             | `git merge`        | Merges branches in Git                                      | `git merge feature-branch`                        | Merges 'feature-branch' into the current branch      |
| Docker     | Run Container         | `docker run`       | Runs a command in a new Docker container                    | `docker run -it ubuntu bash`                      | Runs a bash shell in a new Ubuntu container             |
| Docker     | List Containers       | `docker ps`        | Lists Docker containers                                     | `docker ps -a`                                    | Lists all Docker containers, including inactive ones    |
| Docker     | Build Image           | `docker build`     | Builds an image from a Dockerfile                           | `docker build -t myimage .`                       | Builds a Docker image named 'myimage' from current dir  |
| Docker     | Push Image            | `docker push`      | Pushes an image to a Docker registry                        | `docker push myimage`                             | Pushes 'myimage' to a Docker registry                   |
| Docker     | Pull Image            | `docker pull`      | Pulls an image from a Docker registry                       | `docker pull ubuntu`                              | Pulls the Ubuntu image from a Docker registry           |
| Docker     | Stop Container        | `docker stop`      | Stops one or more running containers                        | `docker stop mycontainer`                         | Stops a running container named 'mycontainer'           |
| Docker     | Remove Container      | `docker rm`        | Removes one or more containers                              | `docker rm mycontainer`                           | Removes a container named 'mycontainer'                 |
| k8s        | Get Resources         | `kubectl get`      | Displays one or many resources                              | `kubectl get pods`                                | Lists all pods in the current namespace                |
| k8s        | Apply Configuration   | `kubectl apply`    | Applies a configuration to a resource from a file           | `kubectl apply -f deployment.yaml`                | Applies configuration from 'deployment.yaml'            |
| k8s        | Delete Resources      | `kubectl delete`   | Deletes resources by filenames, stdin, resources, names     | `kubectl delete -f ./pod.json`                    | Deletes resources specified in 'pod.json'               |
| k8s        | Describe Resource     | `kubectl describe` | Shows details of a specific resource or group of resources  | `kubectl describe pods my-pod`                    | Describes the 'my-pod' pod with detailed info           |
| k8s        | Execute Command       | `kubectl exec`     | Executes a command in a container                           | `kubectl exec -ti my-pod -- bash`                 | Executes bash shell in 'my-pod' container               |
| Git        | Clone Repository      | `git clone`        | Clones a repository into a new directory                    | `git clone https://github.com/user/repo.git`      | Clones the specified repository into a new directory    |
| Git        | Pull Changes          | `git pull`         | Fetches and integrates with another repository or local branch | `git pull origin master`                       | Pulls changes from the 'master' branch of the origin    |
| Git        | Commit Changes        | `git commit`       | Records changes to the repository                           | `git commit -m "Commit message"`                  | Commits changes with the provided message               |
| Git        | Push Changes          | `git push`         | Updates remote refs along with associated objects           | `git push origin master`                          | Updates the 'master' branch on the remote repository    |
| Git        | Create Branch         | `git branch`       | Creates, lists, renames, and deletes branches               | `git branch new-branch`                           | Creates a new branch named 'new-branch'                 |
| Git        | Switch Branch         | `git checkout`     | Switches branches or restores working tree files            | `git checkout feature-branch`                     | Switches to the 'feature-branch' branch                 |
