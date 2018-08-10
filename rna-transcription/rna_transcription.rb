
# I'll work on refactoring this later.

class Complement
    def self.of_dna(strand)
        arr = strand.split('')
        string = ''
        for c in arr do
            if c == 'G' then string += 'C' end
            if c == 'C' then string += 'G' end
            if c == 'T' then string += 'A' end
            if c == 'A' then string += 'U' end
        end
        if string.length == strand.length then 
            return string
        else 
            return ''
        end
    end
end

module Bookkeeping
	VERSION = 6 # Where the version number matches the one in the test
end
