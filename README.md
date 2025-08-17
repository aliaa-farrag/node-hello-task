Node.js Hello App

This project shows how to run a simple Node.js app with Docker, CI/CD, Terraform, and New Relic monitoring.

Steps

1-Install npm locally and run the app with:
npm start
Access at: http://localhost:3000/

2-Write a Dockerfile to containerize the app.

3-Create a GitHub Actions workflow to build and push the Docker image to Docker Hub.

4-Add required secrets (DockerHub credentials, New Relic license key) in GitHub Actions.

5-Write Terraform files to provision a container in ECS with the built image.

6-Create a new APM and service in New Relic and get the NEW_RELIC_LICENSE_KEY.

7-Write the Terraform files to provision a container locally, then add the New Relic license key to the container and access the website at http://localhost:8080/. 

8-Monitor the app performance in New Relic.

👉 That’s the short flow from local app → Docker → CI/CD → Terraform → New Relic.