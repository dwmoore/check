class Check
  attr_reader :num_string, :num_reverse, :words

  def initialize(number)
    @num_string = number.to_s
    @num_reverse = num_string.reverse
    @words = {1 => "one",
             2 => "two",
             3 => "three",
             4 => "four",
             5 => "five:",
             6 => "six",
             7 => "seven",
             8 => "eight",
             9 => "nine",
             10 => "ten",
             11 => "eleven",
             12 => "twelve",
             13 => "thirteen",
             14 => "fourteen",
             15 => "fifteen",
             16 => "sixteen",
             17 => "seventeen",
             18 => "eighteen",
             19 => "nineteen",
             20 => "twenty",
             30 => "thirty",
             40 => "forty",
             50 => "fifty",
             60 => "sixty",
             70 => "seventy",
             80 => "eighty",
             90 => "ninety",
             }
  end

  def to_words
    if num_string.to_i < 100
      check_tens
    elsif num_string.length == 3
      check_hundreds
    elsif num_string.length == 4
      check_thousands
    end
  end

  private

  def check_tens
    num = num_reverse[0..1].reverse
    if num[0] == "1"
      "#{words[num.to_i]}"
    else
      "#{words[num[0].to_i * 10]} #{words[num[1].to_i]}"
    end
  end

  def check_hundreds
    hundreds = num_reverse[2].to_i
    tens_ones = check_tens
    "#{words[hundreds]} hundred #{tens_ones}"
  end

  def check_thousands
    thousands = num_reverse[3].to_i
    hundreds = check_hundreds
    "#{words[thousands]} thousand #{hundreds}"
  end
end
