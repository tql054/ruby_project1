require_relative "phuongtiengt"

class Xetai < PhuongtienGT
    attr_accessor :trongtai

    def showDetailInfo 
        puts "------------------------------------"
        puts "Ma PT: #{@id}"
        puts "Loai xe: xe may}"
        puts "Hang SX: #{@hangsx}" 
        puts "Dong xe: #{@dongxe}"
        puts "Kieu dong co: #{@kieudongco}"
        puts "Gia ban: Cong nhan}"
        puts "Bien so: #{@bienso}"
        puts "Mau xe: #{@mauxe}"
        puts "Trong tai: #{@trongtai}"
    end
end
