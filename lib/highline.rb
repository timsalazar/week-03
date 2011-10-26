require 'rubygems'
require 'highline/import'

# Refer to the documentation here for some more examples:
# @see http://rubydoc.info/gems/highline/1.6.2/frames
# 
# A bit of warning, highline is great, but the documentation of all the examples
# is not the best. During the next class we will review it in more detail so go
# as far as you are interested.
# 

say "Hello World!"

company = ask("Company? ") do |question| 
  question.default = "Google"
end

say "You work for #{company}"

choose do |menu|
  menu.prompt = "Please choose your favorite prograaming language."
  menu.choice(:ruby) { say ("Good choice!") }
  menu.choices(:python, :perl) { say("Not from around here, are you?") }
end

birthday = ask("Birthday? ") do |question|
  question.default = "You were born sometime, right?"
end

say "You were born on #{birthday}"

ask("Birthday? ", Date) 
