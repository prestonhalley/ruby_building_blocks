def substrings(str, list)
    word_counts = Hash.new(0)
    str = str.downcase.split(" ")
    list.each do |l_word|
        str.each do |s_word|
            word_counts[l_word] += 1 if s_word.include?(l_word)
        end
    end
    print word_counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"

substrings(word, dictionary)