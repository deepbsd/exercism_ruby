class Pangram

    def self.pangram?(line=' ')
      ('a'..'z').all? { |char| line.downcase.include? (char) }
    end

end

module Bookkeeping
	VERSION = 6 # Where the version number matches the one in the test
end
