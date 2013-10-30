def roman_numerals(number)

  if number > 0 && number < 100
    convert_ones_and_tens(number)
  elsif number >= 100 && number < 1000
    convert_hundreds(number)
  elsif number >= 1000 && number < 4000
    convert_thousands(number) 
  end
end

def convert_ones_and_tens(number)

  ones = {
    0 => "",
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "IX"  
  }

  teens = {
    10 => "X",
    11 => "XI",
    12 => "XII",
    13 => "XII",
    14 => "XIV",
    15 => "XV",
    16 => "XVI",
    17 => "XVII",
    18 => "XVIII",
    19 => "XIV"
  }

  tens = {
    0 => "",
    2 => "XX",
    3 => "XXX",
    4 => "XL",
    5 => "L",
    6 => "LX",
    7 => "LXX",
    8 => "LXXX",
    9 => "XC"
  }

  if number <= 10 
    ones[number]
  elsif number >= 11 && number < 20
    teens[number]
  elsif number >= 20 && number < 100
    tens[(number/10).floor] + ones[number%10]
  end 
end  
    
def convert_hundreds(number)

    hundreds = {
    0 => "",
    1 => "C",
    2 => "CC",
    3 => "CCC",
    4 => "CD",
    5 => "D",
    6 => "DC",
    7 => "DCC",
    8 => "DCCC",
    9 => "CM"
  }
  if number >= 100 && number < 1000
    hundreds[(number/100).floor] + convert_ones_and_tens(number%100)
  else hundreds[number]  
  end
end  

def convert_thousands(number)

  thousands = {
    0 => "",
    1 => "M",
    2 => "MM",
    3 => "MMM"
  }

  if number >= 1000 && number < 4000
    thousands[(number/1000).floor] + convert_hundreds(number%1000)
  else 
    thousands[number]
  end
end  
