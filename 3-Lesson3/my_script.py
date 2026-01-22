# print("Hello, World!")

# name = "Jayden"
# age = 36
# city = "Singapore"
# print(f"Hello, {name}! You are {age} years old and you live in {city}.")


my_list = [20,40,70,20,10,20,50]


max_value = my_list[0]

# Loop through each number in the list
for number in my_list:
    # If current number is greater than max_value, update max_value
    if number > max_value:
        max_value = number

print(f"The largest number in the list is: {max_value}")