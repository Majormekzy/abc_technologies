<<<<<<< HEAD
# abctechnologies code
"# assignment1" 
=======
# ABC_Technologies.
>>>>>>> 8e6502e0c310763faa948c348c2bbaf673d52bfc
Building a CI/CD Pipeline for a Retail Company - ABC Technologies.
Goals:
•	Highly Available 
•	Highly scalable 
•	Highly performant
•	Easily built and maintained
•	Developed and deployed quickly 
•	Lower production bugs 
•	Frequent releases 

Prerequisites:
•	Java
•	Maven
•	Git
•	Jenkins
•	Docker
•	Ansible
•	Kubernetes
•	Grafana 
•	Prometheus  

My Approach:
Steps:
•	Cloning the project: Cloned the project source code from GitHub and download it to the local machine.
•	Creating a new GitHub repository: Created a new GitHub repository to host the project code and enable collaboration - https://github.com/Majormekzy/abc_technologies.git
•	Initializing Git: Initialized Git on the local machine to start tracking changes made to the project code.
•	Pushing the source code to the new repository: Pushed the cloned project code to the new GitHub repository to make it available to other collaborators.
•	Provisioning servers: Provisioned three servers for the integration: Server A (Jenkins Master, Ansible Master, Docker), Server B (K8s Master, Ansible Node, Docker, Prometheus & Grafana), and Server C (K8s Node).
•	Configuring Server A: Configured Jenkins on Server A, install the necessary plugins for pipeline integration, installed and configured Ansible for communication with Server B, install Docker and integrate it with Jenkins, and integrate Ansible with Docker and Kubernetes.
•	Configuring Server B: Installed Kubernetes on Server B, join the node in Server C, create an Ansible user and configure SSH connection with Server A's master node, and install Docker.
•	Configuring Server C: Configured K8s Node 1 on Server C.
•	Creating a CI/CD Pipeline in Jenkins: Created a pipeline to automate the software delivery process and facilitate continuous integration and continuous delivery (CI/CD).
•	Configuring Jenkins with Maven tool: Configured Jenkins to use Maven as a build tool for the pipeline.
•	Creating the Jenkinsfile: Created a Jenkinsfile that defines the pipeline stages, including compilation, testing, and packaging.
•	Executing Maven commands: Executed the Maven commands specified in the Jenkinsfile to compile, test, and package the project code.
•	Configuring Pipeline Build triggers and GitHub Webhook: Configured the pipeline to trigger builds automatically on specific events, such as code changes pushed to the GitHub repository.
•	Configuring Docker and Ansible in Jenkins Global Tool Configuration: Configured Docker and Ansible in the Jenkins Global Tool Configuration to make them available in the pipeline.
•	Creating a Docker repository: Created a new Docker repository on Docker Hub to host the Docker images built in the pipeline.
•	Creating the Dockerfile: Created a Dockerfile that defines the environment and dependencies required to run the project code.
•	Updating the Jenkinsfile for Docker build and push: Updated the Jenkinsfile to include the Docker build and push stages to push the Docker images to the Docker repository.
•	Configuring K8S cloud on Jenkins: Configured the Kubernetes cloud on Jenkins to enable deployment to Kubernetes.
•	Creating an Ansible playbook: Created an Ansible playbook that deploys the project artifacts to Kubernetes, including the deployment and service.
•	Updating the Jenkinsfile to execute Ansible playbook: Updated the Jenkinsfile to execute the Ansible playbook and deploy the containerized application to the Kubernetes server.
•	Monitoring K8s cluster using Prometheus & Grafana: Installed Prometheus and Grafana on the K8s Master node to monitor the Kubernetes cluster

