class Engine
  attr_reader(:acceleration, :fuel_economy)
  
  def initialize (acceleration, fuel_economy)
    @acceleration = acceleration
    @fuel_economy = fuel_economy
  end
end