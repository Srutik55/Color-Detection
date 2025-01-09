#!/bin/bash

# Simple Interest Calculator with Colorful Output

# Function to print colorful text
print_color() {
  # Usage: print_color "text" "color_code"
  # Color Codes: 
  # 31=Red, 32=Green, 33=Yellow, 34=Blue, 35=Magenta, 36=Cyan
  echo -e "\e[$2m$1\e[0m"
}

# Introduction
print_color "Welcome to the Simple Interest Calculator!" 36

# Input Principal
read -p "$(print_color 'Enter the Principal amount (P): ' 33)" principal

# Input Rate of Interest
read -p "$(print_color 'Enter the Rate of Interest (R) in %: ' 33)" rate

# Input Time Period
read -p "$(print_color 'Enter the Time period (T) in years: ' 33)" time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the Result
print_color "Calculating Simple Interest..." 34
sleep 1
print_color "Simple Interest = $simple_interest" 32
print_color "Thank you for using the Simple Interest Calculator!" 36
