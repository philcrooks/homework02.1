class Car
  attr_reader(:speed, :fuel_level)

  def initialize(engine)
    @speed = 0
    @fuel_level = 100
    @engine = engine
  end

  def accelerate()
    if fuel_level > 0
      @speed += @engine.acceleration
      @fuel_level-= @engine.fuel_economy
      @fuel_level = 0 if fuel_level < 0
    end
  end

  def brake()
    @speed -= 10
    @speed = 0 if @speed < 0
  end
end