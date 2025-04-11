1. Folder structure setup 

We setup the folder structures as shown below
infra-repo
    auth
    terraform   
        env 
            dev
            prd 

2. Created aishift-dev-01 manually from console and enabled
    resource manager and compute engine api 
    If you want to do from gcloud you can run this: 
    gcloud services enable compute.googleapis.com \
    cloudresourcemanager.googleapis.com \
    --project=aishift-dev-01

3. default network already got created.  This needs to be taken care next time not to create

4. project create from Terraform is working but there are other apis that get automatically enabled when it is 
    done from console, those are missing from Terraform

5. PRD setup - This is done perfectly 
    - Logged in to the management project console aishift-mgmt from gcpadmin@aishift.uk
    - Created terraform-prd service account 
    - Run the terraform script from the terraform-prd service account to create project aishift-prd-01
    - Now, since the prd project is created, login as gcpadmin in mgmt project and assign owner perms on prd project to terraform sa
    - Due to above elevated perms, terraform-prd can take over and do other things 
    