number = 70
factor = number // 2 
while factor > 1:
    if number % factor == 0:
        is_prime = True
        index = 2
        while index < factor//2 :
            if factor % index == 0: #fixed the mistake i forgot to mention the value here i.e if factor>index == 0
                is_prime = False
                break
            index = index + 1
        if is_prime:
            print(factor)
            break     
    factor = factor - 1

