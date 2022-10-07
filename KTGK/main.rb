require_relative "QLPTGT"

qlpt_158 = QLPTGT.new()
listPT_158 = []

loop do
    puts ""
    puts "Chuong trinh quan ly phuong tien giao thong"
    puts "1/Them phuong tien"
    puts "2/Xoa theo id"
    puts "3/Hien thi danh sach"
    puts "4/Tim kiem"
    puts "5/Thoat"
    puts "Chon chuc nang:"
    option = gets.chomp
    case option
        when "1"
            listPT_158.push(qlpt_158.themPhuongtien)
        when "2"
            listPT_158 = qlpt_158.xoaPhuongtien(listPT_158)
        when "3"
            qlpt_158.showAll(listPT_158)
        when "4"
            qlpt_158.timPT(listPT_158)
        when "5"
            break
        end
end