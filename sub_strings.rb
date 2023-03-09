dictionary = ["below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    hash_of_substrings = {}

    dictionary.each do |word| 
        match_counter = string.downcase.scan(word).length
        unless match_counter == 0
            hash_of_substrings[word] = match_counter    
        end   
    end
    return hash_of_substrings
end


substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)