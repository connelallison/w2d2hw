require("minitest/autorun")
require("minitest/rg")
require_relative("../bear_river_fish.rb")

class EcosystemTest < MiniTest::Test

  def setup
    @bear = Bear.new("Alvin", "Brown")
    @fish_1 = Fish.new("Bob")
    @fish_2 = Fish.new("Charles")
    @fish_3 = Fish.new("Derek")
    @fish_4 = Fish.new("Eric")
    @fish_5 = Fish.new("Frank")
    @fishies = [@fish_1, @fish_2, @fish_3, @fish_4, @fish_5]
    @river = River.new("Brooks", @fishies)
  end

  def test_bear_eats_fish()
    assert_equal(@river.fish_count(), 5)
    assert_equal(@bear.stomach_count(), 0)
    @bear.eat_fish(@river)
    assert_equal(@river.fish_count(), 4)
    assert_equal(@bear.stomach_count(), 1)
  end

  def test_roar()
    assert_equal(@bear.roar(), "Rawr.")
  end

  def test_stomach_count()
    assert_equal(@bear.stomach_count(), 0)
  end

  def test_fish_count()
    assert_equal(@river.fish_count(), 5)
  end

end
