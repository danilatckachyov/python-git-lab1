from Employee import *
Person_1 = Employee(1, 'Vanya Vankov', 'PE', 30000)
Person_2 = Employee(2, 'Danila Tckachyov', 'IT', 100000)
Person_3 = Employee(3, 'Nikita Yarmulski', 'Diplomatics', 40000)

print(Person_1.id)
Person_1.id = 20
print(Person_1.id)

Person_1.id = -1
print(Person_2)
