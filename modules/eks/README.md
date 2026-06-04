# This is an eks provisioning terraform module in dev environments.
To connect with aws eks cluster from local, we have to install the aws cli and the kubectl commands.

--> aws documentation for the aws cli installaton
    https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

--> kubernetes documentation to install the kubectl
    https://kubernetes.io/docs/tasks/tools/


--> Connect with kubernetes cluster from local use the below command
    <br>&nbsp;* aws eks --region <region name> update-kubeconfig --name <cluster name></br>
    <br>&nbsp;* aws eks --region ap-southeast-2 update-kubeconfig --name dev-eks</br>
    
--> verify the cluster details
    <br>* kubectl config get-contexts</br>

--> switch b/w clusters
    <br>* kubectl config use-context <cluster name></br>

