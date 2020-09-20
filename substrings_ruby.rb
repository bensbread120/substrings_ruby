 def substrings(string, dictionary) 
    word_count = {}
    string.downcase.split.each do |word|
        dictionary.each do |value|
            (word.include?(value))? (word_count.has_key?(value)? word_count[value] += 1 : word_count[value] = 1) : ()
        end
    end
    puts word_count   
 end

#string[index].include?("dictionary_string")

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }