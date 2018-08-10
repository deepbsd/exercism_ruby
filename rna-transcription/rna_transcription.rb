

class Complement
    def self.of_dna(strand)
        hash = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
        string = ''
        strand.each_char do |c|
            hash.has_key?(c) && string += hash[c]
        end
        string.length == strand.length || string = ''
        string
    end
end

module Bookkeeping
	VERSION = 6 # Where the version number matches the one in the test
end
