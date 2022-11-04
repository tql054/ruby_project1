class Phanso
    attr_accessor :tu
    attr_accessor :mau
    def initialize(tu, mau)
        @tu = tu
        @mau = mau
    end
    def +(phanso)
        tu1 = @tu
        mau1 = @mau
        tu2 = phanso.tu
        mau2 = phanso.mau

        if mau1 == mau2
            tu = tu1 + tu2
            mau = mau1
            result = Phanso.new(tu, mau)
            return result
        else 
            tu = tu1 * mau2 + tu2 * mau1
            mau = mau1 * mau2
            result = Phanso.new(tu, mau)
            return result
        end
    end

    def -(phanso)
        tu1 = @tu
        mau1 = @mau
        tu2 = phanso.tu
        mau2 = phanso.mau

        if mau1 == mau2
            tu = tu1 - tu2
            mau = mau1
            result = Phanso.new(tu, mau)
            return result
        else 
            tu = tu1 * mau2 - tu2 * mau1
            mau = mau1 * mau2
            result = Phanso.new(tu, mau)
            return result
        end
    end

    def *(phanso)
        tu1 = @tu
        mau1 = @mau
        tu2 = phanso.tu
        mau2 = phanso.mau

        tu = tu1 * tu2
        mau = mau1 * mau2

        result = Phanso.new(tu, mau)
        return result
    end

    def /(phanso)
        tu1 = @tu
        mau1 = @mau
        tu2 = phanso.tu
        mau2 = phanso.mau

        tu = tu1 * mau2
        mau = mau1 * tu2

        result = Phanso.new(tu, mau)
        return result
    end
    def show() 
        if(@mau<0)
            @tu*=-1
            @mau*=-1
        end
        if(@mau==1)
            puts @tu
        else
            puts "#{@tu}/#{mau}"
        end
    end


end