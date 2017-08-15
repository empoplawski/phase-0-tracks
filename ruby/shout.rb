

#module Shout
	
#	def self.yell_angerly(words)
		#{}"words + "!!!" + " :( ""
#	end

#	def self.yelling_happily(words)
		#{}"words + "!!!" + " :) ""
#	end

#end

#Shout.yell_angerly
#Shout.yelling_happily

module Shout
	def yells(object)
	puts "Hey! Do you see that #{object}!!!!!!"
	end
end

class Girl
	include Shout
end

class Boy
	include Shout
end

girl = Girl.new
girl.yells("pelican")

boy = Boy.new
boy.yells("penguin")
