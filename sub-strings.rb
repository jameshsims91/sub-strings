dictionary = %w(below down go going horn how howdy it i low own part partner sit)

def substrings(word, dictionary)
  counts = Hash.new(0)

  word_downcase = word.downcase

  dictionary.each do |substring|
    matches = word_downcase.scan(/#{substring}/i)
    count = matches.length

    counts[substring] = count if count > 0
  end
  counts
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)