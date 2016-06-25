# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

 "zom".insert(1, 'o').insert(1, 'o')
# => “zoom”

"enhance".ljust(12, " ").rjust(16, " ")
# => "    enhance    "

 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

 "the usual".ljust(18, ' suspects')
#=> "the usual suspects"

 " suspects".rjust(18, 'the usual ')
# => "the usual suspects"

 "The case of the disappearing last letter"..gsub!('letter', "lette")
# => "The case of the disappearing last lette"

 "The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

 "z".bytes
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
	Its the number in "bytes" in Z

 "How many times does the letter 'a' appear in this string?".count "a"
# => 4