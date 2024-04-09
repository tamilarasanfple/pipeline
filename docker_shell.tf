# Define a null resource to execute the shell script
resource "null_resource" "invoke_shell_script" {
  # Use a local-exec provisioner to run the shell script
  provisioner "local-exec" {
    # Specify the command to run the shell script
    command = "./docker-shell.sh"  # Replace with the path to your shell script
  }

  # Specify triggers to force Terraform to re-run the provisioner on every apply
  triggers = {
    always_run = "${timestamp()}"
  }
}

