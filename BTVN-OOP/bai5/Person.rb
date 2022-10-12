class Person
    def initialize(fullName, age, passport, room, numberRent)
        @fullName = fullName,
        @age = age,
        @passport = passport,
        @room = room,
        @numberRent = numberRent
    end

    def getPassport
        return @passport
    end

    def getNumberRent
        return @passport
    end

    def getRoom
        return @room
    end

    def showInfo
        puts "----------------"
        puts "Full name: #{@fullName}"
        puts "Age: #{@age}"
        puts "Passport: #{@passport}"
        puts "Room: #{@room.getCategory}"
        puts "Total days: #{@numberRent}"
    end
end