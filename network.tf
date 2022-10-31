resource "aws_vpc" "vpcs" {
    count        = 2
    cidr_block   = var.cidr_blocks[count.index]

    tags = {
      "Name" =var.vpc_name_tags[count.index]

    }
}
resource "aws_subnet" "subnets" {
    count = 4
    vpc_id = aws_vpc.vpcs[0].id
    cidr_block =cidrsubnet(var.cidr_blocks[0],8, count.index)
    tags = {
      "Name" =var.Primary-vpc-tags[count.index]

    }
    depends_on = [
      aws_vpc.vpcs[0]
    ]

  
}
resource "aws_subnet" "subnets2" {
    count = 4
    vpc_id = aws_vpc.vpcs[1].id
    cidr_block =cidrsubnet(var.cidr_blocks[1],8,count.index)
    tags = {
      "Name" = var.Secondary-vpc-tags[count.index]
    }
  depends_on = [
    aws_vpc.vpcs[1]
  ]
}