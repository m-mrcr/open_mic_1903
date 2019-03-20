class OpenMic

  attr_reader :location,
              :date

  def initialize(attributes = Hash.new)
    @location = attributes[:location]
    @date = attributes[:date]
  end
  
end
