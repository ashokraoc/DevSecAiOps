#!/bin/bash

echo "Please enter your User name"
read -s user_name

echo "Please enter your Password"
read -s user_passwd

echo "User name is::  $user_name"
echo "Password received successfully."


# read command to ask for the Enter Username

read -p "Enter your username: " user_name
read -s -p "Enter your password: " user_passwd

echo
echo "Welcome, $user_name"