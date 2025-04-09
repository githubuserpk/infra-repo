::create management project
gcloud projects create aishift-mgmt --name="aishift-mgmt" --set-as-default

gcloud billing projects link aishift-mgmt --billing-account=01ABA4-7C864A-B28272

gcloud services enable cloudbilling.googleapis.com

gcloud billing accounts add-iam-policy-binding 01ABA4-7C864A-B28272 \
    --member="serviceAccount:terraform-prd@aishift-mgmt.iam.gserviceaccount.com" \
    --role="roles/billing.user"

::enable resource manager api 

gcloud services enable cloudresourcemanager.googleapis.com --project=aishift-mgmt

::enable project creator at org level role 
gcloud organizations add-iam-policy-binding 1014571956575 --member="serviceAccount:terraform-prd@a
ishift-mgmt.iam.gserviceaccount.com"  --role="roles/resourcemanager.projectCreator"