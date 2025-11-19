class Logger
  def event(s)
    puts s
  end

  def warning(s)
    warn s
  end
end

class Divider
  def divide(a, b, logger)
    if b == 0
      logger.warning("division by zero")
      return nil
    end
    logger.event("dividing #{a} by #{b}")
    a / b
  end
end

l = Logger.new
d = Divider.new

d.divide(1,2,l)
d.divide(10,5,l)
d.divide(99,0,l)