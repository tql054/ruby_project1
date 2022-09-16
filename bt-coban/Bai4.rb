array=[]
3.times {
    puts "Nhập so:"
    array.push(gets.to_i)
}
puts "Cac so da nhap: #{array}"
puts "Tang dan: #{array.sort!}"
puts "Giam dan: #{array.reverse}"
