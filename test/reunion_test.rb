require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'
require './lib/activity'

class ReunionTest < Minitest::Test

  def test_it_exists
    r = Reunion.new("Denver")

    assert_instance_of Reunion, r
  end

  def test_it_has_a_name
    r = Reunion.new("Denver")

    assert_equal "Denver", r.name
  end

  def test_activities_starts_empty
    r = Reunion.new("Denver")

    assert_equal [], r.activities
  end
end
