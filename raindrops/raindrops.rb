class Raindrops
    def self.convert(num)
        result = ''
        hash = Hash[3 => 'Pling', 5 => 'Plang', 7 => 'Plong']
        for n in hash.each_key
          result += hash[n] if num % n == 0
        end
        return "#{num}" if result == '' or return result
    end
end

module Bookkeeping
	VERSION = 3 # Where the version number matches the one in the test
end
