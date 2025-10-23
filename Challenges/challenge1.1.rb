def celcius (f)
    c = (f - 32) * 5.0/9.0
    puts c
end

fahrenheit_nums = [212, 98.6, 32, -40, -459]

fahrenheit_nums.each do |num|
    celcius(num)
end
