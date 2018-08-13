class Raindrops
    def self.convert(num)
        result = ''
        hash = Hash[3 => 'Pling', 5 => 'Plang', 7 => 'Plong']
        for n in hash.each_key
            if num % n == 0
              result += hash[n]
            end
        end
        
        return "#{num}" if result == '' or return result

    end
end

module Bookkeeping
	VERSION = 3 # Where the version number matches the one in the test
end
