require ('minitest/autorun')
require('minitest/rg')
require_relative('../engine')
require_relative('../car')

class CarTest < MiniTest::Test
  def setup
    normal_engine = Engine.new(10, 5)
    turbo_engine = Engine.new(25, 10)
    @sensible_car = Car.new(normal_engine)
    @awesome_car = Car.new(turbo_engine)
  end

  def test_car_acceleration
    @sensible_car.accelerate
    assert_equal(10, @sensible_car.speed)
    assert_equal(95, @sensible_car.fuel_level)
    @awesome_car.accelerate
    assert_equal(25, @awesome_car.speed)
    assert_equal(90, @awesome_car.fuel_level)
  end

  def test_car_braking
    @sensible_car.accelerate
    assert_equal(10, @sensible_car.speed)
    @sensible_car.brake
    assert_equal(0, @sensible_car.speed)
    @sensible_car.brake
    assert_equal(0, @sensible_car.speed)
    assert_equal(95, @sensible_car.fuel_level)
  end

  def test_fuel_use
    @awesome_car.accelerate
    @awesome_car.accelerate
    @awesome_car.accelerate
    @awesome_car.accelerate
    @awesome_car.accelerate
    @awesome_car.accelerate
    @awesome_car.accelerate
    @awesome_car.accelerate
    @awesome_car.accelerate
    assert_equal(225, @awesome_car.speed)
    assert_equal(10, @awesome_car.fuel_level)
    @awesome_car.accelerate
    assert_equal(250, @awesome_car.speed)
    assert_equal(0, @awesome_car.fuel_level)
    @awesome_car.accelerate
    assert_equal(250, @awesome_car.speed)
    assert_equal(0, @awesome_car.fuel_level)
  end
end