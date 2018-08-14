class Squares

    def initialize(number)
      @number = number
    end

    def square_of_sum()
      arr = *(1..@number)
      arr.sum**2
    end

    def sum_of_squares()
      arr = *(1..@number)
      arr.sum{ |n| n**2 }
    end

    def difference()
      square_of_sum() - sum_of_squares()
    end

end

module Bookkeeping
	VERSION = 4 # Where the version number matches the one in the test
end
