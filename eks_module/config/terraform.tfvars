
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0b0777a209e7e4189","subnet-0c69ce730156388ee","subnet-0558e50ef1e1441df"]
        tags = {
             "Name" =  "demo-cluster1"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0b0777a209e7e4189","subnet-0c69ce730156388ee","subnet-0558e50ef1e1441df"]
        tags = {
             "Name" =  "node1"
         } 
  }
}
