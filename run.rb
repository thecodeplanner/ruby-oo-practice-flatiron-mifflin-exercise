require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

pam = Manager.new("Pam", "Administration", 30)
dwight = Manager.new("Dwight", "Sales", 34)
toby = Manager.new("Toby", "HR", 40)

jim = Employee.new("Jim", 60000, dwight)
anthony = Employee.new("Anthony", 50000, dwight)
melissa = Employee.new("Melissa", 75000, pam)
kobe = Employee.new("Kobe", 25000, toby)

# p kobe.salary
# p Employee.paid_over(55000)

# p Manager.all_departments

# p Employee.find_by_department("HR")

# p anthony.tax_bracket

# p Manager.average_age.to_f

binding.pry 