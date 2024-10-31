class NegativeNumberError < StandardError; end

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiters_list = /[\n,;\/]/

    #here input strings replace all delimiter with , and then convert into array using split.
    number_array = numbers.gsub(delimiters_list, ",").split(",").map(&:to_i)

    negative_numbers = number_array.select{|n| n < 0}
    raise NegativeNumberError, "Negative numbers not allowed #{negative_numbers.join(', ')}" unless negative_numbers.empty?
    
    number_array.sum
  end
end