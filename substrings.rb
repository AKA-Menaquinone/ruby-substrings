dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  result = {}
  dictionary.each do |word|
    result[word] = words.scan(/(?=#{word})/).count
  end
  result.select {|k, v| v != 0}
end

p substrings("how now below low i ii i", dictionary)