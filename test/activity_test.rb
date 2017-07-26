require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_exists
    a = Activity.new("Brunch")

    assert_instance_of Activity, a
  end

  def test_starts_with_no_participants
    a = Activity.new("Brunch")

    actual = a.participants
    expected = {}

    assert_equal expected , actual
  end

  def test_can_add_to_participants
    a = Activity.new("Brunch")

    actual = a.add_participant(key, value)
    expected = {"Jim" => 20}


    assert_equal expected , actual
  end

  def test_activity_has_total_cost
    a = Activity.new("Brunch")

    assert_equal 20, a.total_cost
  end

end
