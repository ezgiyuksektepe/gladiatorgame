class Response
  def act
    raise NotImplementedError
  end

  def react(strategy,event)
    strategy.act(event)
  end
end


class Positive < Response

  def act(event)
    if event == "Health Loss"
      puts"BOO BOO BOO BOO"
    elsif event == "Mission Complete"
      puts"CHEER CHEER CHEER CHEER"
    else
      puts"GASP GASP GASP"
    end
  end
end



class Negative < Response

  def act(event)
    if event == "Health Loss"
      puts"CHEER CHEER CHEER CHEER"
    elsif event == "Mission Complete"
      puts"BOO BOO BOO BOO"
    else
      puts"GASP GASP GASP"
    end
  end
end


class Neutral < Response

  def act(event)
    if event == "Health Loss"
      puts"GASP GASP GASP"
    elsif event == "Mission Complete"
      puts"CHEER CHEER CHEER CHEER"
    else
      puts"BOO BOO BOO BOO"
    end
  end
end
