def starts_with_a_vowel?(word)
  if word.match(/\b[aeiouAEIOU]\w/) == nil
    return false
  else
    return true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/\A[A-Z].*\W$/).length == 0
    return false
  else
    return true
  end
end

def valid_phone_number?(phone)
  if phone.scan(/[[0-9]()-]/).length == 0 
    return false
  else
    return true
  end
end #"2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"   true
#28894546", "(718)891-13135", "234 43 9978", "(800)IloveNY   false
