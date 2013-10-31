require 'active_record'
require './lib/employee'
require './lib/division'
require './lib/projects'

database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations["development"]
ActiveRecord::Base.establish_connection(development_configuration)

def welcome
  puts "welcome to the best employee tracker in the world"
  menu
end

def menu
  choice = nil
  until choice == 'e'
    puts `clear`
    puts "Press 'a' to add an employee, 'l' to list them."
    puts "Press 'ld' to list all divisions."
    puts "Press 'p' to add a project"
    choice = gets.chomp
    case choice
    when 'ld'
      divisions
    when 'a'
      add_employee
    when 'l'
      list_employees
    when 'p'
      add_project
    when 'e'
      puts "Goodbye, mofo. be gone."
    else
      puts "Type something that makes sense."
    end
  end
end

def add_employee
  puts "Please enter employee name"
  employee_name = gets.chomp
  puts "Please enter the division name"
  division_input = gets.chomp
  division_id = Division.find_or_create_by(:name => division_input).id
  employee = Employee.new(:employee => employee_name, :division_id => division_id)
  employee.save
end

def list_employees
  Employee.all.each do |employee|
    puts employee.employee
  end
end

def divisions 
  Division.all.each do |division|
    puts division.name
  end

  puts "Type a division to see all the employees working there."
  division_input = gets.chomp.downcase
  division = Division.where(:name => division_input).pop
  division.employees.each do |employee|
    puts employee.employee
  end
end

def add_project
  puts "please enter a project name"
  project_name = gets.chomp
  puts "which employee is working on this project"
  employee_name = gets.chomp
  project = Project.new(:name => project_name)
  project.save
  employee = Employee.where(:employee => employee_name).pop
  employee.update_attributes(:project_id => project.id)
end

welcome


