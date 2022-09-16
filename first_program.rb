#Question 1
fullName = "Le Quoc Tuan"
studentCode = " 1911505310158"
puts "Xin chao " + fullName + studentCode

#Question 2
puts "Nhap so: "
number1 = gets
puts "So vua nhap la: " + number1

#Question 3
puts "Nhap so thu nhat: "
number2 = gets.chomp.to_i
puts "Nhap so thu hai: "
number3 = gets.chomp.to_i

if (number2 > number3)
    puts "So lon hon la: " + number2.to_s
else 
    puts "So lon hon la: " + number3.to_s
end



