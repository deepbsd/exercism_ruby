class RomanNumerals
	

    def self.to_roman(number)
    	romanhash = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}

	    result = ""
		romanhash.each_key do |k|
			count = (number/k).to_i
			result += romanhash[k] * count
			number -= number/k * count
		end
		result
    end

end

module Bookkeeping
	VERSION = 6 # Where the version number matches the one in the test
end



##!/usr/bin/env bash
#
#num=${1}
#
#romans=( 'M' 'CM' 'D' 'CD' 'C' 'XC' 'L' 'XL' 'X' 'IX' 'V' 'IV' 'I')
#integers=( 1000 900 500 400 100 90 50 40 10 9 5 4 1 )
#
#result=''
#
#for n in $(seq 0 $((${#integers[@]}-1)));
#do
#  count=$((num/integers[n]))
#  if [ ${count} -ge 1 ]; then
#      for ((i=1; i<=${count}; i++))
#      do
#          result+=$(printf "${romans[n]}%.0s" {1..${count}} )
#      done
#  else 
#      result+=''
#  fi
#  ((num-=(integers[n]*count)))
#done
#
#echo ${result}





