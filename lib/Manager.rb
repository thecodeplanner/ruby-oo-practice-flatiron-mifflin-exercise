class Manager
    attr_accessor :name, :age, :department

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department 
        @age = age.to_i
        Manager.all << self
    end

    def self.all
        @@all 
    end

    def employees
        Employee.all.select {|employee| employee.manager_name == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        Manager.all.map { |manager| manager.department}
    end

    def self.average_age
        Manager.all.sum {|manager| manager.age} / self.all.count 
    end

end
