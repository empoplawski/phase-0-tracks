# Virus Predictor

# I worked on this challenge [by myself, with: Diane Henry and Neal Peters ].
# We spent [3] hours on this challenge.

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
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

### looks at population by state and estimates how many people will die, assigning a rate according to population density 

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people"

  end

  #### looks at how many people will be infected and how fast

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread in #{speed} months.\n\n"

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





