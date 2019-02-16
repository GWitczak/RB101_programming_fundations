def substrings(string)
  result = []
  (string.size).times do |start|
    (string.size).times do |last| 
      result << string[start..last] if !string[start..last].empty?
    end
  end
  result
end

def palindrome?(string)
  pal = string.chars.select {|char| char =~ /[A-Za-z0-9]/}.join # ignoring non-alphanumeric char
  pal.downcase == pal.downcase.reverse && pal.size > 1 # ignoring lower/upper case
end

def palindromes(string)
  palindrome = []
  substrings(string).each do |word|
    palindrome << word if palindrome?(word)
  end
  palindrome
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  "ll", "-madam", "-madam-", "-madam-did-madam", "-madam-did-madam-", 
  "madam", "madam-", "madam-did-madam", "madam-did-madam-", "ada", "adam-did-mada", 
  "dam-did-mad", "am-did-ma", "m-did-m", "-did", "-did-", "did", "did-", "-madam", 
  "-madam-", "madam", "madam-", "ada", "oo"
]

p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

p palindromes('Madam Dam-Did-mAdAm') == [
  "Madam", "Madam ", "ada", " Dam-Did-mAd", "Dam-Did-mAd", "am-Did-mA", "m-Did-m", 
  "-Did", "-Did-", "Did", "Did-", "-mAdAm", "mAdAm", "AdA"
]

p palindromes('A-da 1madaM-dId-mAdam1') == [
  "A-da", "A-da ", " 1madaM-dId-mAdam1", "1madaM-dId-mAdam1", "madaM", "madaM-", 
  "madaM-dId-mAdam", "ada", "adaM-dId-mAda", "daM-dId-mAd", "aM-dId-mA", "M-dId-m", 
  "-dId", "-dId-", "dId", "dId-", "-mAdam", "mAdam", "Ada"
]

