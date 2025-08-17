variable "region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "project_name" {
  description = "Prefix for ECS resources"
  type        = string
}

variable "docker_image" {
  description = "Docker image name (e.g., user/app)"
  type        = string
}

variable "image_tag" {
  description = "Docker image tag"
  type        = string
}

variable "cpu" {
  description = "CPU units for task"
  type        = string
  default     = "256"
}

variable "memory" {
  description = "Memory for task"
  type        = string
  default     = "512"
}

variable "container_port" {
  description = "Port your container listens on"
  type        = number
  default     = 3000
}

variable "desired_count" {
  description = "Number of ECS tasks to run"
  type        = number
  default     = 1
}

variable "subnets" {
  description = "Subnets for ECS tasks"
  type        = list(string)
}

variable "security_groups" {
  description = "Security groups for ECS tasks"
  type        = list(string)
}