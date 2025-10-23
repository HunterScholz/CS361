str = "chicken bonz rules"
vowelNum = 0
str.each_char do |c|
    if c == 'a' || c == 'e' || c == 'i' || c == 'u' || c == 'o'
        vowelNum += 1
    end
end
puts vowelNum

str << " and arby's drools"

vowelNum = 0
str.each_char do |c|
    if c == 'a' || c == 'e' || c == 'i' || c == 'u' || c == 'o'
        vowelNum += 1
    end
end
puts vowelNum

newStr = ""
str.each_char do |c|
    if c != 'a' and c != 'e' and c != 'i' and c != 'u' and c != 'o'
        newStr <<= c
    end
end

vowelNum = 0
newStr.each_char do |c|
    if c == 'a' || c == 'e' || c == 'i' || c == 'u' || c == 'o'
        vowelNum += 1
    end
end
puts vowelNum

newStr << " and i like ham"

vowelNum = 0
newStr.each_char do |c|
    if c == 'a' || c == 'e' || c == 'i' || c == 'u' || c == 'o'
        vowelNum += 1
    end
end
puts vowelNum

newNewStr = ""
newStr.each_char do |c|
    if c != 'a' and c != 'e' and c != 'i' and c != 'u' and c != 'o'
        newNewStr <<= c
    end
end

vowelNum = 0
newNewStr.each_char do |c|
    if c == 'a' || c == 'e' || c == 'i' || c == 'u' || c == 'o'
        vowelNum += 1
    end
end
puts vowelNum