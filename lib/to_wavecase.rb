class String
  def to_wavecase
    self.gsub(/[[:alnum:]]/).with_index {|char, index| index.odd? ? char.upcase : char.downcase}
  end
end
