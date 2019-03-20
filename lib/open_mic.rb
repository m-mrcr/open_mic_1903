class OpenMic

  attr_reader :location,
              :date,
              :performers

  def initialize(attributes = Hash.new)
    @location = attributes[:location]
    @date = attributes[:date]
    @performers = []
  end

  def welcome(user)
    @performers.push(user)
  end

  def all_jokes
    jokes = []
    @performers.map do |performer|
      performer.jokes.select do |j|
        jokes.push(j)
      end
    end
    jokes
  end

  def repeated_jokes?
    if all_jokes.uniq.length == all_jokes.length
      false
    else
      true
    end
  end

end
