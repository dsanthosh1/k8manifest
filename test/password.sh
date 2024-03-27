#!/bin/bash

# Generate a random password
generate_password() {
    # Define the character set for the password
    characters="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_-+=<>?{}[]"

    # Define the length of the password
    length=12

    # Use /dev/urandom to generate random bytes and then translate them to characters
    password=$(head /dev/urandom | tr -dc "$characters" | head -c "$length" ; echo '')

    echo "$password"
}

# Call the function to generate a password
password=$(generate_password)

echo "Randomly generated password: $password"
