#!/bin/bash

global_var="I am global"

demo_local() {
  local local_var="I am local"
  echo "Inside function: $local_var"
}

demo_local
echo "Outside function: $global_var"
# echo $local_var  # This will fail because local_var is not accessible here
