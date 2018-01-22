def caesar_cipher(string, x)
  uppercase = ('A'..'Z').to_a
  downcase = ('a'..'z').to_a

  string = string.split("")
  coded_word = []
  string.each { |character|
    if uppercase.include?(character)
      coded_word << uppercase[reset_alphabet_index(uppercase.index(character) + x)]
    elsif downcase.include?(character)
      coded_word << downcase[reset_alphabet_index(downcase.index(character) + x)]
    else
      coded_word << character
    end
  }
  coded_word.join("")

end

def reset_alphabet_index(index)
  if index > 25 then index -= 26 end
  index
end

#testing the method
#puts caesar_cipher("I Really hope this works, it took me ages", 5)
