"""This program defines about calculation of income tax
"""

Income = int(input("Enter the amount :"))
Tax = 0 
if Income <= 400000:
    print(Tax)
elif 400000 <= Income <= 800000:
    Tax = (Income - 400000) * 0.05
    print(Tax)
elif 800001 <= Income <= 1200000:
    Tax = ((400000*0.05)+(Income - 800000)*0.10)
    print(Tax)
elif 1200001 <= Income <= 1600000:
    Tax = ((400000*0.05)+(400000*0.10)+ (Income - 1200000)*0.15)
    print(Tax)
elif 1600001 <= Income <= 2000000:
    Tax = ((400000*0.05)+(400000*0.10)+(400000*0.15)+ (Income - 1600000)*0.20)
    print(Tax)
elif 2000001 <= Income <= 2400000:
    Tax = ((400000*0.05)+(400000*0.10)+(400000*0.15)+(400000*0.20)+(Income - 2000000)*0.25)
    print(Tax)
elif Income >= 2400001:
    Tax = ((400000*0.05)+(400000*0.10)+(400000*0.15)+(400000*0.20)+(400000*0.25)+(Income - 2400000)*0.30)
    print(Tax)