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

    assert_equal Hash.new , a.participants
  end

end
