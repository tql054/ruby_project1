require_relative "Canbo"

class Congnhan < Canbo
    attr_accessor :rank

    def showDetailInfo 
        puts "------------------------------------"
        puts "Ho ten can bo: #{@fullName}"
        puts "So tuoi: #{@age}" 
        puts "Gioi tinh #{@gender}"
        puts "Dia chi #{@address}"
        puts "Chuc vu: Cong nhan}"
        puts "Cap bac #{@rank}"
    end

    def showBriefInfo
        puts "------------------------------------"
        puts "Ho ten can bo: #{@fullName}"
        puts "So tuoi: #{@age}" 
        puts "Chuc vu: Cong nhan"
    end
end
