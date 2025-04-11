@ECHO on

type C:\Users\Pradeep\AppData\Roaming\gcloud\application_default_credentials.json

gcloud config configurations list 
gcloud config get-value account
gcloud config list project
gcloud config list --all --format="flattened"

echo "run gcloud auth application-default login to login and update the GAC" 

gcloud config configurations activate my-prod-config