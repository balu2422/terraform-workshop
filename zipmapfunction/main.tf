# Create a map by zipping the lists together
locals {
  tags_map = zipmap(var.tag_keys, var.tag_values)  # Dynamically creates a map from two lists
}

# Create the AWS security group
resource "aws_security_group" "example" {
  name        = "example-sg"           # Name of the security group
  description = "Example security group"  # Description of the security group

  # Apply dynamic tags using the map created above
  tags = local.tags_map  # Tags are applied dynamically using the map
}

output "security_group_id" {
  value = aws_security_group.example.id  # Output the ID of the created security group
}

output "tags_map" {
  value = local.tags_map  # Output the tags map so we can see the result
}

