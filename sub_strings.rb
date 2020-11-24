dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  word_arr = word.split(/[,!.?;:'" "]/)

  low_case = word_arr.each do |str|
    str.downcase!
  end

  result = Hash.new(0)

  for sub in low_case
    for text in dictionary
      if text == sub or sub.include? text
        result[text] += 1
      end
    end
  end

  result
end