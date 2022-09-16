puts "Canh thu 1"
canhA=gets.to_i
puts "Canh thu 2"
canhB=gets.to_i
puts "Canh thu 3"
canhC=gets.to_i

if canhA+canhB>canhC && canhB+canhC>canhA && canhC+canhA>canhB
    puts "Day la tam giac"
    puts "Chu vi tam giac la: #{p=canhA+canhB+canhC}"
    puts "Dien tich tam giac la: #{Math.sqrt(p*(p-canhA)*(p-canhB)*(p-canhC))}"
else 
    puts "Day khong phai la tam giac"
end

