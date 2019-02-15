DEGREE_IN_MINUTES = 60
MINUTE_IN_SECONDS = 60
DEGREE_IN_SECONDS = DEGREE_IN_MINUTES * MINUTE_IN_SECONDS
DEGREE = "\xC2\xB0"

def dms(angle)
  if angle < 0
    negative = true
    angle *= -1
  end 

  seconds = ((angle * DEGREE_IN_SECONDS) % 60).round(2)
  minutes = ((angle * MINUTE_IN_SECONDS) % 60).round(2)

  angle *= -1 if negative == true

# sprintf("%.1d#{DEGREE}%.2d'%.2d''",angle.to_i, minutes, seconds)
  format(%(#{angle.to_i}#{DEGREE}%.2d'%.2d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

p dms(-76.73) == %(-76°43'48")
p dms(-254.6) == %(-254°36'00")
p dms(-93.034773) == %(-93°02'05")
