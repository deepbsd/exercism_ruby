class Hamming
	def self.compute(s1, s2)
		distance = 0
		if s1.length != s2.length then throw ArgumentError end
		0.upto(s1.length-1) do |i| 
			if s1[i] != s2[i] then distance += 1 end
		end	
		distance
	end
end

module BookKeeping
	VERSION = 3 # Where the version number matches the one in the test.
end