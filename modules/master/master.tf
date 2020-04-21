resource "aws_eks_cluster" "eks_cluster" {

    name    = var.cluster_name
    version = var.k8s_version
    role_arn = aws_iam_role.eks_cluster_role.arn

    vpc_config {

        security_group_ids = [
            aws_security_group.cluster_master_sg.id
        ]

        subnet_ids = [
            var.private_subnet_1a.id,
            var.private_subnet_1c.id
        ]

    }

    tags = {
        "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    }

}
