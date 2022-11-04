require_relative "phanso"

    phanso1 = Phanso.new(1,2)
    phanso2 = Phanso.new(1,2)

    puts "1/2 + 1/2 = "
    puts (phanso1+phanso2).show
    puts "1/2 - 1/2 = "
    puts (phanso1-phanso2).show
    puts "1/2 * 1/2 = "
    puts (phanso1*phanso2).show
    puts "1/2 / 1/2 = "
    puts (phanso1/phanso2).show
