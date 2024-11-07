# Banking and Financial Domain Project #
**Author** : P.Jagan Mohan
**GitHub** : https://github.com/JaganPothina/Banking-website
## Application preview ##
Here's a screenshot of the banking application deployed on the production server:
![Screenshot 2024-11-07 092146](https://github.com/user-attachments/assets/9212ac5a-50e1-4063-8908-4a914e7f7c77)

## Project Overview ##
This project automates the deployment, testing, and monitoring of a banking application on AWS using a CI/CD pipeline. The infrastructure setup and configuration management is handled with Terraform, Ansible, and Docker, while continuous integration and delivery are managed with Jenkins.

## Key Components ##
**Infrastructure Provisioning**: Terraform scripts create and configure test and production environments on AWS, including Jenkins-server and app instances.
**Instance Configuration**: An IAM role for Jenkins-server provides EC2 resource access, enabling it to manage instances through the pipeline.
**Elastic IP Setup**: An Elastic IP is assigned to the test server to ensure consistent access for Selenium automated testing.

## Tools and Technologies ##
**Jenkins**: Manages CI/CD pipeline.
**Docker**: Containerizes application components.
**Ansible**: Configures the production server.
**Terraform**: Automates the infrastructure setup.

## CI/CD Pipeline ##
Configured Jenkins with necessary global tools and created a job, Baning-website, to automate the build, deploy, and test cycle.
**Selenium Tests**: Executes automated tests on the test server after each deployment.
**Production Deployment**: Deploys the application to the production server upon successful testing.

## Monitoring Setup ##
**Prometheus & Grafana**: Installed on Jenkins-server to monitor system health and resource usage on both test and production servers.
**Node Exporter & cAdvisor**: Deployed on test and production servers to collect metrics, with Prometheus scraping the data.
**Monitoring Dashboard**: Created in Grafana for real-time monitoring of production resources and performance.

This setup enables reliable application deployment with automated testing and monitoring, ensuring a smooth workflow for continuous delivery in a banking domain.
















