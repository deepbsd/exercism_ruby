class Raindrops
    def self.convert(num)
      case num
	    when num % 3 == 0 && num % 5 == 0
		  return "PlingPlang"
		when num % 3 == 0
		  return "Pling"
		when num % 5 == 0
		  return "Plang"
		else
		  return "#{num}"
      end
    end


end

module Bookkeeping
	VERSION = 3 # Where the version number matches the one in the test
end
