require_relative "Canbo"

class Kysu < Canbo
    attr_accessor :major
    
    def showDetailInfo 
        puts "------------------------------------"
        puts "Ho ten can bo: #{@fullName}"
        puts "So tuoi: #{@age}" 
        puts "Gioi tinh #{@gender}"
        puts "Dia chi #{@address}"
        puts "Chuc vu: Ky su}"
        puts "Chuyen nganh dao tao: #{@major}"
    end

    def showBriefInfo
        puts "------------------------------------"
        puts "Ho ten can bo: #{@fullName}"
        puts "So tuoi: #{@age}" 
        puts "Chuc vu: Ky su"
    end
end
