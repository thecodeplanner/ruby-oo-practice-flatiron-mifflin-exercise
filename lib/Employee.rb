class Employee
    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        Employee.all << self 
    end

    def self.all
        @@all 
    end 

    def self.paid_over(salary)
        Employee.all.find_all {|employee| employee.salary > salary}   
    end
    
    def self.find_by_department(department)
        Manager.all.find {|manager| manager.department == department}
    end

    def tax_bracket
        Employee.all.select {|employee| employee.salary > (1000 + self.salary) && employee.salary > (1000 - self.salary)}
    end
end
