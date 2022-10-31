variable "cidr_blocks"{
  type = list 
  description = "these are the vpcs"
  
}
variable "vpc_name_tags" {
  type = list
  description = "these are the names of the vpc s"
}
variable "Primary-vpc-tags" {
  type = list(string)
  description = "these are the name of the primary vpc subnets"
  
}
variable "Secondary-vpc-tags" {
  type = list(string)
  description = "these are the secondary vpc taga names"
  
}
variable "region" {
  type= string
  default="us-west-1"
  description = "this is the region where the network gets creates"
}