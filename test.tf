variable "my_list" {
  default = ["I am", "chavo"]
}

variable "my_map" {
  default = {
    id      = "1"
    message = "I am chavo"
  }
}

## functions to test
output "my_list_test1" {
  value = "${length(var.my_list)}"
}

output "my_map_test1" {
  value = "${lookup(var.my_map, "id")}"
}

output "my_map_test2" {
  value = "${lookup(var.my_map, "message")}"
}

output "my_map_test3" {
  value = "${lookup(var.my_map, "author", "None")}"
}
