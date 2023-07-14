variable "name" {
  type        = string
  description = "The name of the VPC."
}
variable "cidr" {
  type        = string
  description = "The CIDR of the VPC."
}
variable "public_subnet" {
  type        = string
  description = "The public subnet to create."
}
variable "enable_dns_hostnames" {
  type        = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}
variable "enable_dns_support" {
  type        = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}
variable "map_public_ip_on_launch" {
  type        = map(string)
  description = "A map"
  default     = {}
}
output "public_subnet_id" {
  value = aws_subnet.public.id
}
output "vpc_id" {
  value = aws_vpc.tfb.id
}
output "cidr" {
  value = aws_vpc.tfb.cidr_block
}