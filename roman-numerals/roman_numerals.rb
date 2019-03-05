class Fixnum

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

