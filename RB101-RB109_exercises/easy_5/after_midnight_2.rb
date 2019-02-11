MINUTES_PER_DAY = 1440

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  return 0 if hours == 24 && minutes == 0
  minutes + (hours * 60)
end

def before_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  return 0 if (hours == 24 || hours == 0) && minutes == 0
  MINUTES_PER_DAY - (minutes + (hours * 60))
end

  

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0