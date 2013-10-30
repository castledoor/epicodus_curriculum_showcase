def space_age_minutes_to_seconds(minutes)
   seconds = minutes * 60
end  

def space_age_minutes_to_milliseconds(minutes)
  milliseconds = minutes * 1000
end   

def space_age_seconds_to_days(seconds)
  days = seconds/86400.0
end

def space_age_days_to_years(days)
  years = (days/365.0).round(15)
end   

def space_age_seconds_to_years(seconds)
  years = (seconds/31557100).round(4)  
end  


