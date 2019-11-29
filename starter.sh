// automate the terraform execution process to:
// Falidate the code
// Format the code
// Plan
// Apply

terraform validate
terraform fmt
terraform plan
echo "yes" | terraform apply