resource "aws_neptune_subnet_group" "neptune_subnet_group" {
  name                                = "neptune-subnet-group"
  subnet_ids                          = [var.subnet_id_1, var.subnet_id_2]
}