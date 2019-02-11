DAY_IN_MINUTES = 1440

def time_of_day(delta_minutes)
  delta_days = delta_minutes / DAY_IN_MINUTES
  delta_minutes %= DAY_IN_MINUTES
  hours, minutes = delta_minutes.divmod(60)
  #format('%02d:%02d', hours, minutes) 
  #Further exploration
  t = Time.new(2019, 2, (17 + delta_days), hours, minutes)
  p t.strftime("%A %H:%M")
end


time_of_day(0)# == "00:00"
time_of_day(-3)# == "23:57"
time_of_day(35)# == "00:35"
time_of_day(-1437)# == "00:03"
time_of_day(3000)# == "02:00"
time_of_day(800)# == "13:20"
time_of_day(-4231)# == "01:29"


