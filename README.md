# hello-world
Repo to demonstrate the steps needed for the basic deployment of Application

Brief about the steps that has been followed: Used the OCI(Oracle Cloud Infrastructure)
1. created the python file importing flask library to print "Hello World! Welcome to Conde Nast" in the route path / , exposed in 8080 port.
2. created the docker image from the docker file
3. created the k8s resources like deployment, secret and ingress.
4. Using the .gitlab-ci.yml file to deploy the k8s resources to the OKE Cluster.
5. created the cname and dns in order to expose to the internet but due to restrictions, not able to expose it.
