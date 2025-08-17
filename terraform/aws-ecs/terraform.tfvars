region         = "us-east-1"
project_name   = "hello-nodejs"
docker_image   = "aliaafarrag/nodejs-hello"
image_tag      = "e3bac78"
cpu            = "256"
memory         = "512"
container_port = 3000
desired_count  = 1

subnets        = ["subnet-123456", "subnet-abcdef"]
security_groups = ["sg-123456"]