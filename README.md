# PBM Backend

## Prerequisites

- [Java Verison 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html) or above installed on your machine

## Getting Started

The purpose of this documentation is to provide a step-by-step guide on how to set up and run the PBM Backend application locally, without the use of Docker Compose.

### Clone the Repository

```bash
git clone git@github.com:houstonlws/PBM-Backend.git   
```

### Start the Backend Server

```bash 
cd PBM-Backend
./gradlew bootRun --console=plain
```

The backend server will start running on `http://localhost:8080`. To test the API, you can use tools like [Postman](https://www.postman.com/) or [curl](https://curl.se/).

### Configuring the Enviroment Variables

Navigate to the `.env` file in the root directory. Update the following variables with your own values:

- `SPRING_DATASOURCE_USERNAME`: Your database username
- `SPRING_DATASOURCE_PASSWORD`: Your database password
- `REFRESH_TOKEN_SECRET`: A secret key for generating refresh tokens

>**Note:** To generate a refresh token secret, you can use the following command: `openssl rand -hex 32`

## Documentation

For more detailed information about the application, including components and usage, please refer to the [Docs](https://houstonlws.github.io/PBM/).
