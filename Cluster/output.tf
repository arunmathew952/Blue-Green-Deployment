output "cluster_id" {
  value = aws_eks_cluster.arun.id
}

output "node_group_id" {
  value = aws_eks_node_group.arun.id
}

output "vpc_id" {
  value = aws_vpc.arun_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.arun_subnet[*].id
}

