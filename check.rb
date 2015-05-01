class Check
  attr_reader :num_string, :num_int, :words

  def initialize(number)
    @num_string = number.to_s
    @num_int = number.to_i
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
    if num_int < 100
      check_tens
    elsif num_string.length == 3
      check_hundreds
    elsif num_string.length == 4
      check_thousands
    end
  end

  private

  def check_tens
    rev = num_string.reverse
    rev = rev[0..1]
    num = rev.reverse
    if num[0] == "1"
      "#{words[num.to_i]}"
    else
      tens = num[0].to_i * 10
      ones = num[1].to_i
      "#{words[tens]} #{words[ones]}"
    end
  end

  def check_hundreds
    hundreds = num_string[0].to_i
    tens_ones = check_tens
    "#{words[hundreds]} hundred #{tens_ones}"
  end

  def check_thousands
    thousands = num_string[0].to_i
    hundreds = num_string[1].to_i
    tens_ones = check_tens
    "#{words[thousands]} thousand #{words[hundreds]} hundred #{tens_ones}"
  end
end
