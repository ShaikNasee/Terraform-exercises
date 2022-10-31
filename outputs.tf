output "Primary-vpc_id" {
    value = aws_vpc.vpcs[0].id

}
output "Secondary-vpc_id" {
 value= aws_vpc.vpcs[1].id

}
output "Primary-vpc-subnetsid" {
    value = aws_subnet.subnets
  
}
output "Secondary-vpc-subnetsids" {
    value = aws_subnet.subnets2
  
}
