class Book
  attr_reader :title

  def title=(name)
    @title = capitalize_title(name)
  end

  def capitalize_title(title)
    words = title.split(' ')
    words.each_index { |i| words[i] = capitalize_word(words[i]) }
    title = words.join(' ')

    capitalize_word(title)
  end

  def capitalize_word(word)
    if capitalize?(word)
      word[0].upcase + word[1..-1]
    else
      word
    end
  end

  def capitalize?(word)
    word_exceptions = %W(and in the of a an)

    not word_exceptions.include?(word)
  end

  private :capitalize_title, :capitalize_word, :capitalize?
end