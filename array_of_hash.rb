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

  def addPercnt?( )
    @@students.each do |student|
      per = student[:marks] * 100 / 100
      student[:percentage] = per
    end
  end

  def prime?(num)
    number = 2
    count = 1
    while number < num
      j = 2
      while j <= number
        break if number%j == 0
        j += 1
      end
      if (j == number and number%10 != 7)
        puts number
        count += 1
      end
      number += 1
    end
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
student_hash.addPercnt?()
student_hash.list_students
student_hash.prime?(30)