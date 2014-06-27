class Student
  attr_reader :name, :email, :paid
  def initialize(name, email, paid)
    @name = name
    @email = email
    @paid = paid
  end
end

student = Student.new "Nan", "nan@gmail.com", true
student2 = Student.new "fred", "fred@gmail.com", false
student3 = Student.new "yola", "yola@gmail.com", false
student4 = Student.new "chris", "chris@gmail.com", true


students = [student, student2, student3, student4]


def not_paid(students)
  students.select do |student|
    student.paid? == false
  end

end

def email(students)
  students.map do |student|
    student.email
  end
end

def print_students_name(students)
end

def print_students_email(students)
  puts email(students)
end



def debug(students)
  students.each do |student|
    puts "Name: #{student.name}, email: #{student.email}"
  end


end

print_students_email(not_paid(students))
