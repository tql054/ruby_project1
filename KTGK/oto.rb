require_relative "phuongtiengt"

class Oto < PhuongtienGT
    attr_accessor :sochongoi, :kieudongco, :nhienlieu, :sotuikhi, :ngaydangkiem

    def showDetailInfo 
        puts "------------------------------------"
        puts "Ma PT: #{@id}"
        puts "Loai xe: Oto}"
        puts "Hang SX: #{@hangsx}" 
        puts "Dong xe: #{@dongxe}"
        puts "Kieu dong co: #{@kieudongco}"
        puts "Gia ban: Cong nhan}"
        puts "Bien so #{@bienso}"
        puts "Mau xe #{@mauxe}"
        puts "Mau xe #{@mauxe}"
        puts "So cho ngoi #{@sochongoi}"
    end
end
