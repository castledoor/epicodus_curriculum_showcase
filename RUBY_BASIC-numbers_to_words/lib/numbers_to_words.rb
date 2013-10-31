def numbers_to_words(number)


  if number < 100 
    convert_tens(number)
  elsif number >= 100 && number < 1000
    convert_hundreds(number)
  elsif number >= 1000 && number < 1000000
    convert_thousands(number)
  elsif number >= 1000000 && number < 1000000000
    convert_millions(number)
  elsif number >= 1000000000 && number < 100000000000
    convert_billions(number)      
  end
end

def convert_tens(number)

  ones = {
    0 => "",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
  }

  teens = {
    0 => "ten", 
    1 => "eleven",
    2 => "twelve",
    3 => "thirteen",
    4 => "fourteen",
    5 => "fifteen",
    6 => "sixteen",
    7 => "seventeen",
    8 => "eightteen",
    9 => "nineteen",
  }

  tens = {
    0 => "",  
    2 => "twenty",
    3 => "thirty",
    4 => "forty",
    5 => "fifty",
    6 => "sixty",
    7 => "seventy",
    8 => "eighty",
    9 => "ninety",
  }
  if number < 10 
    ones[number]
  elsif number >= 10 && number < 20
    teens[number - 10]  
  else 
    tens[(number/10).floor]  + " " +  ones[(number % 10)]
  end  
end

def convert_hundreds(number)
   if number >= 100
    convert_tens(number/100.floor) + " hundred " + convert_tens(number % 100) 
   else
    convert_tens(number) 
   end  
end

def convert_thousands(number)
  if number >= 1000
    convert_thousands(number/1000.floor) + " thousand " + convert_hundreds(number % 1000)
  else
    convert_hundreds(number)  
  end
end  

def convert_millions(number)
  if number >= 1000000
    convert_millions(number/1000000.floor) + " million " + convert_thousands(number % 1000000)
  else
    convert_thousands(number)
  end
end    
 
def convert_billions(number)
  if number >= 1000000000 
    convert_billions(number/1000000000.floor) + " billion " + convert_millions(number % 1000000000)
  else
    convert_millions(number)
  end
end   
