variable "token" {
  type        = string
  nullable    = false
  description = "GitHub authentication token"
}

variable "plc" {
  type    = list(string)
  default = []
}
variable "tsc" {
  type    = list(string)
  default = []
}
variable "ops" {
  type    = list(string)
  default = []
}