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

    actual = a.add_participant
    expected = {"Jim" => 20}

    assert_equal expected , actual
  end

  def test_activity_has_total_cost
    a = Activity.new("Brunch")

    actual = a.total_cost
    expected = 20

    assert_equal expected, actual
  end

  def test_can_add_more_participants
    a = Activity.new("Brunch")

    a.add_participant("Joe", 40)

    actual = a.participants
    expected = {"Jim" => 20, "Joe" => 40}

    assert_equal expected, actual
  end

  def test_can_sum_totals_value
    a = Activity.new("Brunch")

    a.add_participant("Jim", 20)
    a.add_participant("Joe", 40)

    actual = a.total_cost
    expected = 60

    assert_equal expected, actual
  end

  def test_can_split_bill
    a = Activity.new("Brunch")

    actual = a.split
    expected = 30

    assert_equal expected, actual
  end

  def test_can_show_owed_amount_by_person
    a = Activity.new("Brunch")

    actual = a.owed
    expected = {"Jim" => 10, "Joe" => -10}

    assert_equal expected, actual
  end

end
