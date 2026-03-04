def substrings(word, dictionary)
  counts = Hash.new(0)

  word_downcase = word.downcase

  debugger 

  dictionary.each do |substring|
    matches = word_downcase.scan(/#{substring}/i)
    count = matches.length

    counts[substring] = count if count > 0
  end
  counts
end