# code here!
class School
attr_reader :name, :roster
##attr_accessor getter(initial) and setter (puts out initial arg)
##attr_reader only getter method (initial)

def initialize(name)
@name = name
@roster = {}
end

def add_student(student_name, grade)
    roster[grade] = [] if roster[grade] == nil        
    roster[grade] << student_name
    end

##def add_student is a function that is able to add a student,
##able to add multiple students tp a class(grade) and add students
##to different grades

def grade(num)
    roster[num]
##roster[num] will access the numbered data in roster
end

def sort
    sorted = {}
    roster.each {|grade, student_name| sorted[grade] = student_name.sort}
sorted
end
end

##this method is able to sort the students by:
##create a new hash how new key and value to go in - in this case grade and students
##from EACH roster with .each method, key and value obtained from roster. EACH DO wont work
## where method has been declared from attribute accessor
##Then key/value passed into | | as argument to be sorted alphabetically
## sorted alphabetically by sorted[grade] = student_name.sort - .sort sorts alphabet
## as a lowest value z highest value