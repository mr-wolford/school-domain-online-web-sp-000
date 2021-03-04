require 'pry'

class School
attr_reader :school, :roster

def initialize(school, roster = {})
  @school = school
  @roster = roster
end

def add_student(name, grade)
  @roster[grade] = [] unless @roster.include? grade
  @roster[grade] << name
end

def grade(grade)
  @roster[grade] if @roster.include?(grade)
end

def sort
  @roster.each do |k, v|
    k.sort
    v.sort
  end
  @roster
end

# I need to access the value of each key, sort it, and return the entire hash with the sorted values

end

school = School.new("TF South")
school.add_student("Matt", 10)
school.add_student("Tim", 10)
school.add_student("Zach", 10)
school.add_student("Alex", 10)
school.add_student("Mochi", 11)
