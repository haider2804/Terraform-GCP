#provider "google": Specifies that we are using Google Cloud as our provider. This configures Terraform to manage GCP resources.

provider "google" { 
  credentials = file(var.google_credentials)
  project     = var.project_id
  region      = var.region
}


#credentials = file(var.google_credentials): This uses the google_credentials variable to locate the credentials file, allowing Terraform to authenticate to your GCP account.

#project and region: Here, we pass the project ID and region as variables (var.project_id and var.region), making our code reusable and adaptable across different projects and regions.