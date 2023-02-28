resource "aws_neptune_cluster" "neptune" {
  cluster_identifier                  = "neptune-cluster-demo"
  engine                              = "neptune"
  vpc_security_group_ids              = [aws_security_group.neptune_security_group.id]
  neptune_subnet_group_name           = aws_neptune_subnet_group.neptune_subnet_group.name
}
resource "aws_neptune_cluster_endpoint" "identifier" {
  cluster_identifier          = aws_neptune_cluster.neptune.cluster_identifier
  cluster_endpoint_identifier = "identifier"
  endpoint_type               = "ANY"
}