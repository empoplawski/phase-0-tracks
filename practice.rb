
class Newsroom

	attr_reader :name
	attr_accessor :budget, :reporters, :salaries

	def initialize(name, budget)
		@name = name
		@budget = budget
		@reporters = {}
		@salaries = []
	end


	def add_reporter(name, skills)
		if @reporters.include?(name)
			puts "You dont want to hire #{name} again"	
		else 
			@reporters[name] = skills
		end
	end

	def salary_for(name)
		length_of_name = name.length
		price = length_of_name * 10000
		@salaries << price
		#puts "#{name}, #{price}"
		@salaries.to_i
	end

	def total_salaries
		@total = @salaries.inject(:+)
		p @total
	end

	def has_budget?(potential_repoter)
		#if (@budget.to_i - @total.to_i) >= salary_for(potential_repoter)
		#	true
		#else
		#	false
		#end
		p @budget.class
		p @total.class
		p salary_for(potential_repoter).class

	end		
end

####driver code

news = Newsroom.new("CNN", 300_000)
news.add_reporter("people", ["fake news", "news"] )
news.add_reporter("people", ["fake news", "news"] )
p news.reporters

news.salary_for("Anderson Cooper")
news.salary_for("Wolf Blitzer")
news.salary_for("Jim Acosta")
news.total_salaries
news.has_budget?("Rachel Maddow")
