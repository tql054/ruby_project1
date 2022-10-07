require_relative "oto"
require_relative "xemay"
require_relative "xetai"

class QLPTGT
    def themPhuongtien
        # ID, Hãng sản xuất, năm sản xuất, dòng xe, giá bán, biển số và màu xe.
        puts "Id phuong tien: "
        id_158 = gets.to_s
        puts "Hang san xuat: "
        hangsx_158 = gets.to_s
        puts "Nam san xuat"
        namsx_158 = gets.to_s
        puts "Dong xe: "
        dongxe_158 = gets.to_s
        puts "Gia ban: "
        giaban_158 = gets.to_s
        puts "Bien so xe: "
        bienso_158 = gets.to_s
        puts "Mau xe: "
        mauxe_158 = gets.to_s
        
        puts "Chon loai phuong tien (oto/xe may/xe tai): "
        option_158 = gets.chomp
        case option_158
            when "oto"
                ptMoi = Oto.new(id_158, hangsx_158, namsx_158, dongxe_158, giaban_158, bienso_158, mauxe_158)
                # số chỗ ngồi, kiểu động cơ, nhiên liệu (xăng/dầu), số túi khí, ngày đăng kiểm.
                puts "So cho ngoi: "
                ptMoi.sochongoi = gets.to_i
                puts "Kieu dong co: "
                ptMoi.kieudongco = gets.to_i
                puts "Nhien lieu: "
                ptMoi.nhienlieu = gets.to_i
                puts "So tui khi: "
                ptMoi.sotuikhi = gets.to_i
                puts "Ngay dang kiem: "
                ptMoi.ngaydangkiem = gets.to_i
                puts "Them thanh cong!"
                return ptMoi
            when "Ky su"
                ptMoi = Xemay.new(id_158, hangsx_158, namsx_158, dongxe_158, giaban_158, bienso_158, mauxe_158)
                puts "Cong suat: "
                ptMoi.congsuat = gets.to_s
                puts "Dung tich binh xang: "
                ptMoi.dungtichbx = gets.to_s
                puts "Them thanh cong!"
                return ptMoi
            else
                ptMoi = Xetai.new(id_158, hangsx_158, namsx_158, dongxe_158, giaban_158, bienso_158, mauxe_158)
                puts "Trong tai: "
                ptMoi.trongtai = gets.to_s
                puts "Them thanh cong!"
                return ptMoi
        end
    end

    def xoaPhuongtien(listPT)
        puts "Nhap id phuong tien can xoa: "
        idXoa = gets.to_s
        for phuongtien in listPT do
            if(phuongtien.getid === idXoa)
                listPT.delete(phuongtien)
                puts "Da xoa phuong tien"
            end
        end
        return listPT
    end

    def timPT(listPT)
        puts "Chon loai tim kiem: (hangsx/mau/bienso)"
        option = gets.chomp
        puts "Tim kiem theo #{option}"
        puts "Nhap tu khoa: "
        key = gets.to_s
        case option
        when "hangsx"
            listSerched_158 = listPT.select{ |phuongtien| phuongtien.gethangsx.include?(key) }
            puts "Ket qua tim kiem"
            listSerched_158.each do |phuongtien| 
                phuongtien.showDetailInfo
            end
        return
        when "mau"
            listSerched_158 = listPT.select{ |phuongtien| phuongtien.getmauxe.include?(key) }
            puts "Ket qua tim kiem"
            listSerched_158.each do |phuongtien| 
                phuongtien.showDetailInfo
            end
            return
        else
            listSerched_158 = listPT.select{ |phuongtien| phuongtien.getbienso.include?(key) }
            puts "Ket qua tim kiem"
            listSerched_158.each do |phuongtien| 
                phuongtien.showDetailInfo
            end
        end
    end

    def showAll(listPT)
        puts "Danh sach phuong tien:"
        listPT.each do |canbo| 
            canbo.showDetailInfo
        end
    end
end