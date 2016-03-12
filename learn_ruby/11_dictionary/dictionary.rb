class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(word)
    word.is_a?(Hash) ? @entries.merge!(word) : @entries[word] = nil
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    @entries.include?(word)
  end

  def find(word)
    @entries.select {|k,v| k =~ /#{word}.*/}
  end

  def printable
    sorted_hash = Hash[@entries.sort]
    printable_string = ""
    sorted_hash.each {|k,v| printable_string << "[#{k}] \"#{v}\"\n"}
    printable_string.chop
  end

end
