number = 70 // 2 
factor = number - 1
while factor > 1:
    if number % factor == 0:
        print(factor)
        is_prime = True
        index = 2
        while index < factor // 2:
            if factor % index:
                print(index)
                is_prime = False
                break
            if is_prime:
                index = index + 1
    factor = factor - 1

