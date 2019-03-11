require 'date'
require 'pry'
# Problem
# Write a method that returns the number of Friday the 13ths
# in the year given by an argument. You may assume that the year is greater than 1752
# (when the United Kingdom adopted the modern Gregorian Calendar)
# and that it will remain in use for the foreseeable future.

# Input: 
# - integer, year greater than 1752
# Output:
# - number of occurences of friday 13th in that year

# Data structure
# - array with number of months [1, 2, 3 ... 12]
# - integers

# Algorithm
# - create arrray months [1, 2, 3 .... 12]
# - create variable occurences
# - iterate through array and check for each month if 13th day of this month is friday
#    - parameter of each block will be number of current month
#    - use Time.new(year parameter 13) and check if this day is friday
# - for each match increment value of occurences by 1
# - return occurences

def friday_13th(year)
  months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  occurences = 0

  months.each do |month|
    occurences += 1 if Time.new(year, month, 13).friday?
  end

  occurences
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# Further exploration

# Problem:
# Count the number months that have five Fridays.

# Rules:
# - account for leap years!

# Input: 
# - integer, year greater than 1752
# Output:
# - number of months that include 5 fridays

# Data Structure
# - hash with number of month as key and numbers of day as value

# Algorithm
# - create variable five_fridays and assgin to 0
# - initialize variable fridays_in_month assign to 0
# - create a hash with number of motnh as key and number of days in this motnh as value
# - if leap_year is true change days of second month to 29
# - count months that include 5 fridays
#    - iterate over hash using month and days as parameters
#    - set date to Date.new(year, month, 1)
#       - count for fridays in each month
#             - days times check if current day is friday
#             - date.friday?
#             - if it is increment value of fridays by 1
#             - at the end of times block switch date to next_day
#    - if friday == 5 increment five_fridays by 1
#    - set fridays to 0
# - return five_fridays

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

def five_friday_months(year)
  five_fridays_months = 0
  fridays_in_month = 0
  months_days = { 1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 
                 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31 }

  months_days[2] = 29 if leap_year?(year)

  months_days.each do |month, days|
    date = Date.new(year, month, 1)

    days.times do
      fridays_in_month += 1 if date.friday?
      date = date.next_day
    end

    five_fridays_months += 1 if fridays_in_month == 5
    fridays_in_month = 0 
  end

  five_fridays_months
end

p five_friday_months(2015) == 4
p five_friday_months(2016) == 5
p five_friday_months(2020) == 4
p five_friday_months(2036) == 4
p five_friday_months(2001) == 4
p five_friday_months(1790) == 5
