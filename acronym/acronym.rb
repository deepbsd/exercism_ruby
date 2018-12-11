class Acronym

    def self.abbreviate(input)
        return input.gsub("-"," ").split.map(&:chr).join.upcase
    end

end
