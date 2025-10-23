#-------------------------------------------------------------
# Exercise 5 Part 1 (Exception Handling)
#-------------------------------------------------------------

class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  def audit!
    # Could fail if external service is offline
    unless auditable?()
      raise ServiceOfflineError, "Service offline"
    end
  end
  def do_work
    # Amazing stuff...
  end
end

def audit_sanity(bedtime_mental_state)
  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

begin 
  new_state = audit_sanity(bedtime_mental_state)
  new_state.do_work
rescue ServiceOfflineError => e
  puts "Audit failed: #{e.message}"
end

#-------------------------------------------------------------
# Exercise 5 Part 2 (Don't Return Null / Null Object Pattern)
#-------------------------------------------------------------

class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end

class NullMentalState < MentalState
  def do_work
    puts "Nothing to do"
  end
end

def audit_sanity(bedtime_mental_state)
  return NullMentalState.new unless bedtime_mental_state.auditable?
  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

new_state = audit_sanity(bedtime_mental_state)
new_state.do_work

#-------------------------------------------------------------
# Exercise 5 Part 3 (Wrapping APIs)
#-------------------------------------------------------------

require 'candy_service'

class WrappedCandyMachine
  def initialize
      @candyMachine = CandyMachine.new
  end

  def prepare
    @candyMachine.prepare
  end

  def ready?
    @candyMachine.ready?
  end

  def make!
    @candyMachine.make!
  end

machine = WrappedCandyMachine.new
machine.prepare

if machine.ready?
  machine.make!
else
  puts "sadness"
end