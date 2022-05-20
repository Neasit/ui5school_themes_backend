## Themes - Sample application

Sample SAPUI5 Application with backend on SAP CAP

### Starting the generated app

-   This app has been generated using the SAP Fiori tools - App Generator, as part of the SAP Fiori tools suite.  In order to launch the generated app, simply run the following from the generated app root folder:

```
    npm start
```

- It is also possible to run the application using mock data that reflects the OData Service URL supplied during application generation.  In order to run the application with Mock Data, run the following from the generated app root folder:

```
    npm run start-mock
```

#### Pre-requisites:

1. Start node.js backed server using Docker image
```
    docker run -p 4004:4004 neasit/themes-sapcap
```
