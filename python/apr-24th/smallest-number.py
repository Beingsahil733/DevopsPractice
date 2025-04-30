number = 4
index = 1
factorial = 1
while index <= number:
    factorial = factorial * index
    index += 1
max = factorial
index = number
while index <= factorial:
    divisible = True
    number_index = 2
    while number_index <= number: 
        if index % number_index != 0:
            divisible = False
            break
        number_index += 1
    if divisible:
        print(index)
        break
    index += 1
    