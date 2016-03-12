def echo(word)
  word
end

def shout(word)
  word.upcase!
end

def repeat(w, t=2)
  ("#{w} " * t).strip
end

def start_of_word(str,letter)
  str[0,letter]
end

def first_word(str)
  str.split(' ')[0]
end

def titleize(str)
  littlewords = %w(and over the)
  str[0] = str[0].upcase

  if str.include?(' ')
    words = str.split(' ')
    words.each_index do |i|
      words[i][0] = words[i][0].upcase unless littlewords.include?(words[i])
    end
    str = words.join(' ')
  end
  str
end





