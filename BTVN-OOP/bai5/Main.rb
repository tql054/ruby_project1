require_relative "Hotel"
require_relative "RoomA"
require_relative "RoomB"
require_relative "RoomC"

hotel = Hotel.new([])
loop do
    puts ""
    puts "Chuong trinh quan ly khach san"
    puts "1/Them khach hang"
    puts "2/Xoa khach hang bang passport"
    puts "3/Tinh tong tien thue"
    puts "4/Xem danh sach"
    puts "5/Thoat"
    puts "Chon chuc nang:"
    option = gets.chomp
    case option
        when "1"
            puts "Ten khach hang"
            name = gets.to_s
            puts "So tuoi"
            age = gets.to_s
            puts "CMND"
            passport = gets.to_s
            puts "So ngay thue"
            numberRent = gets.chomp.to_i
            puts "Loai phong"
            category = gets.chomp
            case category
                when "A"
                    room = RoomA.new()
                    person = Person.new(name, age, passport, room, numberRent)
                    hotel.addPerson(person)
                when "B"
                    room = RoomB.new()
                    person = Person.new(name, age, passport, room, numberRent)
                    hotel.addPerson(person)
                when "C"
                    room = RoomC.new()
                    person = Person.new(name, age, passport, room, numberRent)
                    hotel.addPerson(person)
            end           
        when "2"
            puts "Nhap so CMND"
            passport = gets.to_s
            hotel.delPerson(passport)
        when "3"
            puts "Nhap so CMND"
            passport = gets.to_s
            puts "Gia thue cua khach hang #{passport} la: #{hotel.calculate(passport)}$" 
        when "4"
            hotel.showAll
        when "5"
            break
        end
end