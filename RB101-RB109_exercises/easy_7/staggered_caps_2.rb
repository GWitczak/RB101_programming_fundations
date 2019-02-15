def staggered_case(string, ignore_non_alpha = true)
  upcase = true
  result = string.chars.each do |char|
    if char =~ /[^a-z]/i && ignore_non_alpha == true
      next
    else
      upcase ? char.upcase! : char.downcase!
    end

    upcase = !upcase
  end

  result.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'