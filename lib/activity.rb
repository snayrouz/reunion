class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(key, value)
    @particpants << [:key => :value]
  end

  def total_cost
    add_participant[:value]
  end

end
