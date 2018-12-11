class Isogram

    def self.isogram?(input)
        input = input.gsub(/[- ]/,"")
        return input.downcase.chars.uniq == input.downcase.chars
    end
end

