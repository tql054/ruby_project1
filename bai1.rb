arr=[]
puts "Nhap so phan tu cua mang"
for i in 1..n=gets.to_i do
    puts "Nhap phan tu thu #{i}"
    arr.push(gets.to_i)
end

puts "Phan tu lon nhat: #{arr.max}"
puts "Phan tu be nhat: #{arr.min}"
puts "Gia tri trung binh cac phan tu cua mang #{arr.inject(&:+).to_f/arr.length}"

