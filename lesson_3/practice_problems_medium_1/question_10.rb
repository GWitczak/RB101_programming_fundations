def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# => "no"
# because in foo method 'param' is not used, so 'yes' is passed to bar method