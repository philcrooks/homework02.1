require ('minitest/autorun')
require('minitest/rg')
require_relative('../engine')

class EngineTest < MiniTest::Test

  def test_engines
    normally_aspirated = Engine.new(10, 5)
    turbo = Engine.new(25, 10)
    assert_equal(10, normally_aspirated.acceleration)
    assert_equal(25, turbo.acceleration)
    assert_equal(5, normally_aspirated.fuel_economy)
    assert_equal(10, turbo.fuel_economy)
  end
end