class Fixnum

    #def initialize(num)
    #    @num = num
	#	#@num.to_roman = self.to_roman(@num)
    #end

	def to_roman
		number = self
    	romanhash = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}

	    result = ""
		romanhash.each_key do |k|
			count = (number/k).to_i
			result += romanhash[k] * count
			number -= k * count
		end
		result
    end

end

module Bookkeeping
	VERSION = 2 # Where the version number matches the one in the test
end








#def numeral(num):
#
#    romans = list(reversed(['I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C', 'CD', 'D', 'CM', 'M']))
#    integers = list(reversed([1,4,5,9,10,40,50,90,100,400,500,900,1000]))
#
#    result = ''
#
#    for n in range(len(integers)):
#        count = int(num/integers[n])
#        result += romans[n] * count
#        num -= integers[n] * count
#
#    return result
#
#if __name__ == "__main__":
#    for n in range(1,3001):
#        print(n,': ',numeral(n))
