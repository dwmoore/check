class Check
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_words

    words = {1 => "one",
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
             100 => "hundred",
             1000 => "thousand"
             }

    string_number = number.to_s
    if string_number.length == 1
      words[number]
    elsif string_number.length == 2 && number < 20
      words[number]
    elsif string_number.length == 2 && number > 20
      tens = format_place(0) * 10
      ones = string_number[1].to_i
      words[tens] + " " + words[ones]
    elsif string_number.length == 3
      hundreds = string_number[0].to_i 
      tens = string_number[1].to_i * 10
      if tens == 10
        tens = string_number[1..2].to_i
        return words[hundreds] + " " + words[100] + " " + words[tens]
      else
      ones = string_number[2].to_i
      end
      words[hundreds] + " " + words[100] + " " + words[tens] + " " + words[ones]
    elsif string_number.length == 4
      thousands = string_number[0].to_i
      hundreds = string_number[1].to_i
      tens = string_number[2].to_i * 10
      if tens == 10
        tens = string_number[2..3].to_i
        return words[thousands] + " " + words[1000] + " " + words[hundreds] + " " + words[100] + " " + words[tens]
      else
      ones = string_number[3].to_i
      end
      words[thousands] + " " + words[1000] + " " + words[hundreds] + " " + words[100] + " " + words[tens] + " " + words[ones]
    end
  end
end
