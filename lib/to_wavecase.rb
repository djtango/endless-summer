class String
  # def to_wavecase
  #   self.split(' ').map{|word| word.split('').map.with_index{|char, i| i % 2 == 1 ? char.upcase : char.downcase}.join}.join(' ')

  # end

  def to_wavecase
    array = []
    i = 0
    self.split('').each{|char|
      i % 2 == 0 ? char.downcase! : char.upcase!
      i += 1 if char != ' '
      array << char
    }
    array.join
  end
end
