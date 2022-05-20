# Themes application (backend with SAP CAP)

Sample application with Docker and SAP CAP

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide

## Docker image

There is a option to start the sap cap server inside the docker container
```
    docker run -p 4004:4004 neasit/themes-sapcap
```
or
build the own docker image based on `.Dockerfile`

## Learn More About SAP CAP

Learn more at https://cap.cloud.sap/docs/get-started/.
