class Employee:
    def __init__(self, id: int, name: str, department: str, base_salary: float):
        self.__id = id
        self.__name = name
        self.__department = department
        self.__base_salary = base_salary
    
    @property
    def id(self):
        id1 = self.__id
        return id1
    
    @property
    def name(self):
        return self.__name
    
    @property
    def department(self):
        return self.__department
    
    @property
    def base_salary(self):
        return self.__base_salary
    
    
    @id.setter
    def id(self, newid: int):
        if newid > 0:
            self.__id = newid
        else:
            print('id cant be <0')
    
    @name.setter
    def name(self, newname: str):
        self.__name = newname
    
    @department.setter
    def department(self, newdepartment: str):
        self.__department = newdepartment
    
    @base_salary.setter
    def base_salery(self, newbase_salary: float):
        if newbase_salary > 0:
            self.__base_salary = newbase_salary
        else:
            print('salary cant be <0')
            
    
    def __str__(self):
        return (f"Employee(ID: {self.__id}, Name: {self.__name}, Department: {self.__department}, Salary: {self.__base_salary})")