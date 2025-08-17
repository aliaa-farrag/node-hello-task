variable "image" {
  description = " docker.io/aliaafarrag/nodejs-hello:latest)"
  type        = string
}

variable "container_name" {
  description = "Container name"
  type        = string
  default     = "hello-ci-cd"
}

variable "host_port" {
  description = "Host port to expose"
  type        = number
  default     = 8080
}

variable "new_relic_license_key" {
  description = "New Relic license key"
  type        = string
}

variable "new_relic_app_name" {
  description = "New Relic app name"
  type        = string
}

variable "service_name" {
  description = "Service name environment variable"
  type        = string
  default     = "hello-ci-cd"
}