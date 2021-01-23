class ArrayOfHash
  @@students = []

  def add_student(name:, roll_no:, marks:)
    student = {}
    student[:name]    = name
    student[:roll_no] = roll_no
    student[:marks]   = marks
    @@students.push(student)
  end

  def list_students
    puts @@students
  end

  def result?( name)
    result = @@students.any? {|student| (student[:name] == name && student[:marks] >= 35)}
    puts result ? 'Pass' : 'Fail'
  end

  def grade?(name)
    @@students.each do |student|
      if(student[:name] == name and student[:marks] > 80)
        puts "A"
      elsif(student[:name] == name and student[:marks] >= 60 and student[:marks] < 80)
        puts "B"
      elsif(student[:name] == name and student[:marks] >= 40 and student[:marks] < 60)
        puts "C"
      elsif(student[:name] == name)
        puts "D"
      end
    end
  end
end
student_hash = ArrayOfHash.new
student_hash.add_student(name: "test", roll_no: 1, marks: 34)
student_hash.add_student(name: "test1", roll_no: 2, marks: 36)
student_hash.add_student(name: "test2", roll_no: 3, marks: 90)
student_hash.list_students
student_hash.result?('test')
student_hash.grade?('test')
hsh = Hash.new( "test" )
puts hsh[0]