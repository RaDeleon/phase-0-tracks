=begin
module Shout
  
  def yell_angrily(words)
    words + "!!!" + " >:("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end

end
=end


module Shout
  
  def yell_drunk(words)
    puts "#{words.reverse.upcase}"+ "!!!"
  end

  def yell_question(words)
    words + "???" + " Huh?"
  end
end


class HomelessMan
	include Shout
end

class Mom
	include Shout
end


#driverCode
Rufus = HomelessMan.new
puts Rufus.yell_drunk('You got a dollar!')

Carmen = Mom.new
puts Carmen.yell_question('Are you up yet')