puts "Canh thu 1"
a=gets.to_i
puts "Canh thu 2"
b=gets.to_i
puts "Canh thu 3"
c=gets.to_i

if a+b>c && b+c>a && c+a>b
    puts "Day la tam giac"
else 
    puts "Day khong phai la tam giac"
end
