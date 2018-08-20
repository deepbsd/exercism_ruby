require 'prime'

class Sieve

    def initialize(num)
      @num = num
    end

    def primes()
      Prime.take_while{ |p| p <= @num }
    end
end

module Bookkeeping
	VERSION = 1 # Where the version number matches the one in the test
end


