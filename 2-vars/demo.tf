
# Declaring a variable

variable "sample" {
    default = "Hello world"
}

# Printing an output
output "op" {
    value = var.sample
}

# whenever you want to print a variable in the group of words, you need to use bash syntax

output "ops" {
    value = "My first message is ${var.sample}"
}

# A variable can be directly accessed by calling it as var.variableName, but if you're accessing in between strings need to enclose them.
# In terraform there is no concept of the single quotes.

variable "number" {
    default  = 100
}

output "op_number" {
    value   = var.number
}

# Declaring a list variable
variable "sample_list" {
    default = [
        "Devops",
        55,
        "Parimala",
        "0730AMIST"
    ]
}

output "print_list" {
    value = "Welcome to ${var.sample_list[0]} training and the batch ${var.sample_list[1]}, batch timings are ${var.sample_list[3]}"
}