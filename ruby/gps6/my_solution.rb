# Virus Predictor

# I worked on this challenge [by myself, with: Diane Henry and Neal Peters ].
# We spent [4] hours on this challenge.

# EXPLANATION OF require_relative

# require_relative is a file path that connects a file to a related seperate file so that they can interact. Used in rspec tests with Ruby files to test their functionality.
# 
#require is also a way to access files but is different in what can be accessed and how the files are called
#

# iterate through state data
# call both methods to each state in turn
#


require_relative 'state_data'

class VirusPredictor

attr_accessor :population_density, :population, :state 

### assigns attributes to the class instance and activates the instance variables

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#### synthesises other two methods to print out one collective statements about a speed_of_spread and predicted_deaths


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

### looks at population by state and estimates how many people will die, assigning a rate according to population density 

  def predicted_deaths
    calculate = -> m { (@population * m).floor }
    number_of_deaths = case @population_density
       when 0...50 then calculate.call(0.05)
       when 51...100 then calculate.call(0.1)
       when 101...150 then calculate.call(0.2)
       when 151...200 then calculate.call(0.3)
       else calculate.call(0.4)
       end
    print "#{@state} will lose #{number_of_deaths} people"
  end


  #### looks at how many people will be infected and how fast

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    speed = case @population_density
        when 0...50 then 2.5
        when 51...100 then 2
        when 101...150 then 1.5
        when 151...200 then 1
        else 0.5
      end
      puts "and will spread in #{speed} months.\n\n"
  end

end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 #p STATE_DATA

STATE_DATA.keys.each do |state|

report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
report.virus_effects

end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#alabama.population_density

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section

## there is a larger hash that has a key value of the state name and a value of all of its assigned data that is stored. 
## then within that hash by state there is a hash that has state specific information so such as the population and density, and the numbers that correlate to that state.

## require relative links two files that are stored in the same place so that they can inteact with each other.
## similaly require also relates files, it it just needs a more specific file path, but can work to relate two files from anywhere as long as they are both accessable and stored somewhere where they both can be used as called and needed. 

## you can use .each or .map. You can also use other loops or call on keys or values.

## What stood out to me the most was that the variables were not needed anymore. The parameters are passed on the inital method in which they are written not when they are called in virus effects.
## this makes the code really dry and effective

## I worked a lot on refactoring this challenge and really looking for redudancies and how they can be eliminated. 







