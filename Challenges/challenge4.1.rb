
def function_1(x)
    if x == 99
        return nil
    end
   
    x + 1
end


def function_2(x)
    if x == 99
        raise IndexError
    end
  
    x + 1
end

def function_1_wrapped(x)
    if function_1(x) == nil
        raise IndexError
    end
    function_1(x)
end

def function_2_wrapped(x)
    begin
        return function_2(x)
    rescue IndexError
        return nil
    end
end

puts function_2_wrapped(99).inspect
puts function_1_wrapped(99)