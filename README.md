# Nginx and ngrok Example

This project serves as an example of using Nginx and ngrok for local development and exposing a website through HTTPS.

## Prerequisites

Before running the project, ensure that you have the following dependencies installed:

- Docker
- ngrok account and token (sign up at [ngrok](https://ngrok.com/))

## Getting Started

Follow the steps below to get started with the project:

1. Clone the repository:

   ```bash
   git clone <repository_url>
   ```

2. Navigate to the project directory:

```bash
cd <project_directory>
```

3. Build and run the Docker containers:

```bash
docker-compose up --build
```

The website should now be accessible at http://localhost:80 and https://localhost:443.

Navigate to the NROK account, go to "Tunnels" and copy the TCP URL. The URL should look something like this: `tcp://0.tcp.ngrok.io:12345`. Replace the 'tcp' with 'https'. The URL should now look something like this: `https://0.tcp.ngrok.io:12345`. Navigate to this URL and the website should be accessible through HTTPS.
