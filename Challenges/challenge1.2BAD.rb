# Bad Code

primeNUMBERS = [4, 2, 16, 5, 19, 5, 6, 2, 3, 5, 15, 4, 6, 10, 13, 1, 18, 6, 9, 10, 9,
12, 6, 9, 11, 18, 16, 18, 4, 9, 15, 7, 20, 12, 1, 4, 20, 17, 6, 12, 20,
19, 13, 10, 10, 7, 8, 2, 18, 20, 1, 7, 17, 3, 8, 10, 7, 1, 15, 7, 3, 13,
14, 12, 19, 13, 7, 17, 2, 14, 3, 17, 5, 12, 16, 6, 10, 15, 8, 2, 7, 1,
18, 16, 17, 12, 7, 14, 10, 17, 12, 19, 2, 20, 16, 7, 20, 16, 5, 7]

def a(blue)
    c = 0
    blue.each do |something|
        c += something
    end
    return c
end

def jeepers(sum)
    michael = a(sum).to_f
    return michael / sum.size()
end

def redmond(bend)
    notImportant = 0
    bend.each do |ugh|
        if ugh % 2 == 1
            notImportant += 1
        end
    end
    return notImportant
end

def delete_this(hellothere)
    notheaverage = 0
    for yes in hellothere do
        if hellothere[yes] % 2 == 1
            if hellothere[yes-1] % 2 == 1
                notheaverage += 1
            end
        end
    end
    return notheaverage
end

def method2(a)
    return a(a) + jeepers(a) + redmond(a) + delete_this(a)
end

puts a(primeNUMBERS)
puts jeepers(primeNUMBERS)
puts redmond(primeNUMBERS)
puts delete_this(primeNUMBERS)
puts method2(primeNUMBERS)
