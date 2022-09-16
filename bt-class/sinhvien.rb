class Person
    attr_accessor :hoten, :masv, :diemToan, :diemLy, :diemHoa, :diemTB                   
    def initialize(hoten, masv)
      @hoten = hoten
      @masv = masv
    end
    def tinhDiemTB(diemToan, diemLy, diemHoa)
      self.diemToan = diemToan
      self.diemLy = diemLy
      self.diemHoa = diemHoa
      self.diemTB = [diemToan, diemLy, diemHoa].inject(&:+).to_f/3
    end
    def show_info
      puts "Ho ten sv: #{self.hoten}"
      puts "Masv: #{self.masv}" 
      puts "Diem toan: #{self.diemToan}"  
      puts "Diem ly: #{self.diemLy}"          
      puts "Diem hoa: #{self.diemHoa}"  
      puts "Diem trung binh: #{self.diemTB}"          
    end
  end
  
  p = Person.new("Le Quoc Tuan", 1911505310158)
  puts "Nhap diem toan"
  diemToan = gets.to_f
  puts "Nhap diem ly"
  diemLy = gets.to_f
  puts "Nhap diem hoa"
  diemHoa = gets.to_f
  p.tinhDiemTB(diemToan, diemLy, diemHoa)
  puts "THONG TIN SINH VIEN"
  p.show_info                                