class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiters_list = /[\n,;\/]/

    #here input strings replace all delimiter with , and then convert into array using split.
    number_array = numbers.gsub(delimiters_list, ",").split(",").map(&:to_i)

    number_array.sum
  end
end