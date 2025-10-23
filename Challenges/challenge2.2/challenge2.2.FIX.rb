# Eric Orr: 6

inputArray = ARGV
currentString = ""
currentString << inputArray[0]

# count vowels in first string
def countVowels(str)
    vowelCount = 0
    vowels = "aeiou"
    str.each_char do |char|
        if vowels.include?(char)
            vowelCount += 1
        end
    end
    puts "Vowel Count: #{vowelCount}"
end

# remove vowels
def removeVowels(str)
    str.gsub!(/[aeiouAEIOU]/, '')
end

countVowels(currentString)
currentString << inputArray[1]
countVowels(currentString)
removeVowels(currentString)
countVowels(currentString)
currentString << inputArray[2]
countVowels(currentString)
removeVowels(currentString)
countVowels(currentString)
