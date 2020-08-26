require './lib/dish'
require './lib/potluck'
require 'minitest/autorun'
require 'minitest/pride'

class PotluckTest < MiniTest::Test

  def test_it_exists
    potluck = Potluck.new("7-13-18")

    assert_instance_of Potluck, potluck
  end

  def test_has_attributes
    potluck = Potluck.new("7-13-18")

    assert_equal "7-13-18", potluck.date
    assert_equal [], potluck.dishes
  end

  def test_add_dish
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    potluck.add_dish(couscous_salad)
    assert_equal [couscous_salad], potluck.dishes
    potluck.add_dish(cocktail_meatballs)
    assert_equal [couscous_salad, cocktail_meatballs], potluck.dishes

    assert_equal 2, potluck.dishes.length
  end

end
