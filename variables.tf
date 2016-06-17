//
// Module: tf_aws_asg
//

// Module specific variables

// Launch Configuration Variables
variable "lc_name_prefix" {}
variable "ami_id" {}
variable "instance_type" {}
variable "iam_instance_profile" {}
variable "key_name" {}
variable "security_group" {
  description = "The security group the instances to use"
}

variable "user_data" {
  description = "The path to a file with user_data for the instances"
}

variable "associate_public_ip_address" {
  default = false
}

variable "enable_monitoring" {
  default = false
}

variable "root_volume_size" {
  default = 10
}

variable "root_volume_type" {
  default = "standard"
}

// Auto-Scaling Group
variable "asg_name" {}

variable "asg_number_of_instances" {
  description = "The number of instances we want in the ASG"
}

variable "asg_minimum_number_of_instances" {
  description = "The minimum number of instances the ASG should maintain"
  default = 1
  // Defaults to 1
  // Can be set to 0 if you never want the ASG to replace failed instances
}

variable "asg_maximum_number_of_instances" {
  description = "The minimum number of instances the ASG should maintain"
}

variable "health_check_grace_period" {
  description = "Number of seconds for a health check to time out"
  default = 300
}

variable "health_check_type" {
  default = "EC2"
  //Types available are:
  // - ELB
  // - EC2
  // * http://docs.aws.amazon.com/cli/latest/reference/autoscaling/create-auto-scaling-group.html#options
}

variable "subnet_azs" {
  description = "The VPC subnet IDs"
  // comma separated list
}

variable "azs" {
  description = "Availability Zones"
  // comma separated list
}

variable "tag1_key" { default = "" }
variable "tag1_value" { default = "" }
variable "tag1_propagate" { default = false }

variable "tag2_key" { default = "" }
variable "tag2_value" { default = "" }
variable "tag2_propagate" { default = false }

variable "tag3_key" { default = "" }
variable "tag3_value" { default = "" }
variable "tag3_propagate" { default = false }

variable "tag4_key" { default = "" }
variable "tag4_value" { default = "" }
variable "tag4_propagate" { default = false }

variable "tag5_key" { default = "" }
variable "tag5_value" { default = "" }
variable "tag5_propagate" { default = false }
