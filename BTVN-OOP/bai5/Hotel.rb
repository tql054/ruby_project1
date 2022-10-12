require_relative "Person"

class Hotel
    def initialize(lisPerson)
        @listPerson = lisPerson
    end

    def getlistPerson
        return @listPerson
    end

    def addPerson(person) 
        @listPerson.push(person)
    end

    def delPerson(passport) 
        for person in @listPerson do
            if(person.getPassport === passport)
                @listPerson.delete(person)
                puts "Da xoa khach hang"
                break
            end
        end
    end

    def calculate(passport) 
        for person in @listPerson do
            if(person.getPassport === passport)
                return (person.getRoom.getPrice).to_i * (person.getNumberRent).to_i;
            end
        end
        return 0
    end

    def showAll() 
        @listPerson.each do |person| 
            person.showInfo
        end
    end
end

