resource "aws_iam_instance_profile" "instance-profile" {
  name = "Jumphost-instance-profile"
  role = aws_iam_role.iam-role.name

  # provisioner "local-exec" {
  #   command = "sleep 30" # Wait for 30 seconds
  # }

  # provisioner "local-exec" {
  #   command = <<EOT
  #     until aws iam get-instance-profile --instance-profile-name Jumphost-instance-profile --region ${var.region} > /dev/null 2>&1; do
  #       echo "Waiting for IAM instance profile to become available..."
  #       sleep 10
  #     done
  #     echo "IAM instance profile is now available."
  #   EOT
  # }
}
