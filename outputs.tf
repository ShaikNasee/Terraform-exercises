output "Primary-vpc_id" {
    value = aws_vpc.vpcs[0].id

}
output "Secondary-vpc_id" {
 value= aws_vpc.vpcs[1].id

}
output "subnetcount1" {
    value = length(aws_subnet.subnets )

}
output "subnetcount2" {
    value = length(aws_subnet.subnets)
  
}
