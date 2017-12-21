require_relative "Response"
class Audience
	attr_accessor :event, :respType, :resp

  def initialize()
    random = rand(1..3)
    if random == 1
      @respType = Positive.new
    elsif random == 2
      @respType = Negative.new
    else
      @respType = Neutral.new
    end

  end

  def update(event)
    @event = event
    #puts @event.to_s
    @resp = Response.new
    @resp.react(respType,event)
  end

end
