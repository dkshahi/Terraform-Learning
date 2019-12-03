# automate the terraform execution process to:
# Check workspace
# Validate the code
# Format the code
# Plan
# Apply
terraform workspace list
terraform validate
terraform fmt
terraform plan
echo "yes" | terraform apply