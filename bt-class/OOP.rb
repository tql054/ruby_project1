class Human
    def initialize(name, hair, weight, height, age, phone, email, nation)
        @name = name
        @hair = hair
        @height = height
        @weight = weight
        @age = age
        @phone = phone
        @email = email 
        @nation = nation 
    end 
end

class Student < Human
    attr_accessor :mathMark, :physicMark, :chemistryMark, :averageMark
    def typeMark(math, physic, chemistry)
        @mathMark = math
        @physicMark = physic
        @chemistryMark = chemistry
        self.solveAverage
    end

    def solveAverage 
        @averageMark = [@mathMark, @physicMark, @chemistryMark].inject(&:+).to_f/3
    end

    def show_info
        puts "------------------------------------"
        puts "Student's full name: #{@name}"
        puts "Average Mark: #{@averageMark}" 
        puts ""
    end
end

student1 = Student.new("Le Quoc Tuan", "Black", 46, 160, 21, "07821558211", "abc@123", "VN")
student1.typeMark(7,9,10)
student2 = Student.new("Le Tai", "Black", 46, 160, 21, "07821558211", "abc@123", "VN")
student2.typeMark(7,9,8)
student3 = Student.new("Phan Van Nhan", "Black", 46, 160, 21, "07821558211", "abc@123", "VN")
student3.typeMark(7,9,9)
student4 = Student.new("Do Ngoc Tu", "Black", 46, 160, 21, "07821558211", "abc@123", "VN")
student4.typeMark(9,5,7)
studentList = [student1, student2, student3, student4]
studentList.sort_by {|student| student.averageMark}

puts "STUDENT'S PORTFOLIO LIST BY DECREASING AVERAGE MARK"
studentList.each do |student|
    student.show_info
end
