def normalize_phone_number(number)
  if number.length == 10 || number.length == 11 && number[0] == "1"
    return "good"
  else
    return "bad"  
  end
end  

def one_number(number)
  number.length == 11 && number[0] == "1"
   one_number = number.slice!(1..10)    
end   