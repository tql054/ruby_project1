array=[]
puts "Nhap so phan tu cua mang"
for i in 1..n=gets.to_i do
    puts "Nhap phan tu thu #{i}"
    array.push(gets.to_i)
end

puts "Phan tu lon nhat: #{array.max}"
puts "Phan tu be nhat: #{array.min}"
puts "Gia tri trung binh cac phan tu cua mang #{array.inject(&:+).to_f/array.length}"

