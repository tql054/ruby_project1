require_relative "Canbo"

class Nhanvien < Canbo
    attr_accessor :job

    def showDetailInfo 
        puts "------------------------------------"
        puts "Ho ten can bo: #{@fullName}"
        puts "So tuoi: #{@age}" 
        puts "Gioi tinh #{@gender}"
        puts "Dia chi #{@address}"
        puts "Chuc vu: Nhan vien}"
        puts "Cong viec #{@job}"
    end

    def showBriefInfo
        puts "------------------------------------"
        puts "Ho ten can bo: #{@fullName}"
        puts "So tuoi: #{@age}" 
        puts "Chuc vu: Nhan vien"
    end
end
