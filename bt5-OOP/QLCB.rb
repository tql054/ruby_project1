require_relative "Congnhan"
require_relative "Kysu"
require_relative "Nhanvien"

class QLCB
    def addCanbo
        puts "Ho va ten: "
        fullName_158 = gets.to_s
        puts "So tuoi: "
        age_158 = gets.to_i
        puts "Gioi tinh: (nam/nu/khac)"
        gender_158 = gets.to_s
        puts "Dia chi: "
        address_158 = gets.to_s
        puts "Chuc vu (Cong nhan/Ky su/Nhan vien): "
        position_158 = gets.chomp
        case position_158
            when "Cong nhan"
                newUser = Congnhan.new(fullName_158, age_158, gender_158, address_158)
                puts "Cap bac (1-10): "
                newUser.rank = gets.to_i
                puts newUser.showDetailInfo
                return newUser
            when "Ky su"
                newUser = Kysu.new(fullName_158, age_158, gender_158, address_158)
                puts "Nganh dao tao: "
                newUser.major = gets.to_s
                puts newUser.showDetailInfo
                return newUser
            else
                newUser = Nhanvien.new(fullName_158, age_158, gender_158, address_158)
                puts "Cong viec: "
                newUser.job = gets.to_s
                puts newUser.showDetailInfo
                return newUser
        end
    end

    def searchCanbo(listCB)
        puts "Nhap tu khoa: "
        key = gets.to_s
        listSerched_158 = listCB.select{ |canbo| canbo.getFullName.include?(key) }
        puts "Ket qua tim kiem"
        listSerched_158.each do |canbo| 
            canbo.showDetailInfo
        end
    end

    def showAll(listCB)
        listCB.each do |canbo| 
            canbo.showBriefInfo
        end
    end
end


