require_relative "QLCB"

qlcb_158 = QLCB.new()
listCB_158 = []

loop do
    puts ""
    puts "Chuong trinh quan ly can bo"
    puts "1/Them can bo"
    puts "2/Tim kiem"
    puts "3/Hien thi danh sach"
    puts "4/Thoat"
    puts "Chon chuc nang:"
    option = gets.chomp
    case option
        when "1"
            listCB_158.push(qlcb_158.addCanbo)
        when "2"
            qlcb_158.searchCanbo(listCB_158)
        when "3"
            qlcb_158.showAll(listCB_158)
        when "4"
            break
        end
end