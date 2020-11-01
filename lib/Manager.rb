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
        Employee.all.select {|employee| employee.name == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        Manager.all.map { |manager| manager.department}
    end

    def self.average_age
        total = 0
        Manager.all.select { |manager| total += manager.age}
            avg = total / Manager.all.count 
    end

    # def self.average_age
    #     avg = Manager.total_age / Manager.all.count
    #     avg.to_f
    # end
end
